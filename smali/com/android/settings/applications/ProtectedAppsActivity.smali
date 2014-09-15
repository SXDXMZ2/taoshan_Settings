.class public Lcom/android/settings/applications/ProtectedAppsActivity;
.super Landroid/app/Activity;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;,
        Lcom/android/settings/applications/ProtectedAppsActivity$AppViewHolder;,
        Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;,
        Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;,
        Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    }
.end annotation


# instance fields
.field private mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProtect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitUserAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ProtectedAppsActivity;)Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ProtectedAppsActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ProtectedAppsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->restoreCheckedItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ProtectedAppsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->refreshApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ProtectedAppsActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private refreshApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 209
    .local v4, mainIntent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v5, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 211
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v6, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v0, appEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 214
    .local v3, info:Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v0
.end method

.method private reset()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, componentsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v11, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getCount()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 173
    iget-object v11, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v11, v5}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    iget-object v11, v11, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v11, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11, v5, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 181
    .local v9, resolver:Landroid/content/ContentResolver;
    const-string v11, "protected_components"

    invoke-static {v9, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, hiddenComponents:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 185
    const-string v11, "\\|"

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v3, v0, v6

    .line 186
    .local v3, flattened:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 188
    .local v1, cmp:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 189
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 194
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cmp:Landroid/content/ComponentName;
    .end local v3           #flattened:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_2
    new-instance v8, Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;

    invoke-direct {v8, p0, v2, v13}, Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    .line 196
    .local v8, list:Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;
    new-instance v10, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    invoke-direct {v10, p0, p0}, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    .line 197
    .local v10, task:Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    new-array v11, v13, [Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;

    aput-object v8, v11, v12

    invoke-virtual {v10, v11}, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method

.method private resetLock()V
    .locals 4

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "recreate_pattern_lock"

    const/4 v2, 0x0

    const-class v3, Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    return-void
.end method

.method private restoreCheckedItems()V
    .locals 7

    .prologue
    .line 125
    iget-object v5, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    .line 126
    .local v3, listAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 128
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 129
    invoke-virtual {v3, v1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    .line 131
    .local v2, info:Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    :try_start_0
    iget-object v5, v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->protect:Z

    if-eqz v5, :cond_0

    .line 132
    iget-object v5, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 133
    iget-object v5, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mProtect:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 139
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #info:Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_0
    :pswitch_0
    return-void

    .line 145
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 146
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->finish()V

    goto :goto_0

    .line 157
    :pswitch_3
    iput-boolean v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 146
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 314
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f08041b

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->setTitle(I)V

    .line 57
    const v0, 0x7f040050

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 60
    new-instance v0, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    const v1, 0x7f040051

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->setNotifyOnChange(Z)V

    .line 63
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/applications/ProtectedAppsActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ProtectedAppsActivity$1;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mProtect:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    const v0, 0x7f080419

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 165
    const v0, 0x7f08041a

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 167
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 223
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->reset()V

    goto :goto_0

    .line 226
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->resetLock()V

    goto :goto_0

    .line 229
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->finish()V

    goto :goto_0

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 119
    iget-boolean v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->finish()V

    .line 122
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    new-instance v0, Lcom/android/settings/applications/ProtectedAppsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ProtectedAppsActivity$2;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;)V

    .line 109
    .local v0, refreshAppsTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;>;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/applications/ProtectedAppsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    return-void
.end method
