.class public Lcom/android/settings/autostarts/LewaManageAutostarts;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LewaManageAutostarts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
    }
.end annotation


# static fields
.field public static final MENU_ID_SCAN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "LewaManageAutostarts"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

.field private appsList:Landroid/widget/ListView;

.field private emptyView:Landroid/widget/TextView;

.field public handler:Landroid/os/Handler;

.field private installPkgNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRootView:Landroid/view/View;

.field private menuItem:Landroid/view/MenuItem;

.field private optimizableAppItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

.field private pkgNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pm:Landroid/content/pm/PackageManager;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private showOptimizeList:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pkgNames:Ljava/util/Vector;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->showOptimizeList:Z

    .line 252
    new-instance v0, Lcom/android/settings/autostarts/LewaManageAutostarts$5;

    invoke-direct {v0, p0}, Lcom/android/settings/autostarts/LewaManageAutostarts$5;-><init>(Lcom/android/settings/autostarts/LewaManageAutostarts;)V

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->handler:Landroid/os/Handler;

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/autostarts/LewaManageAutostarts;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->showOptimizeList:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/autostarts/LewaManageAutostarts;)Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/autostarts/LewaManageAutostarts;)Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->optimizableAppItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public closeAutoStartApp(Lcom/android/settings/autostarts/AppItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0bda

    invoke-virtual {p0, v2}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->progressDialog:Landroid/app/ProgressDialog;

    .line 199
    new-instance v0, Lcom/android/settings/autostarts/LewaManageAutostarts$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$3;-><init>(Lcom/android/settings/autostarts/LewaManageAutostarts;Lcom/android/settings/autostarts/AppItem;)V

    invoke-virtual {v0}, Lcom/android/settings/autostarts/LewaManageAutostarts$3;->start()V

    .line 221
    return-void
.end method

.method protected flush()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pkgNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 162
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    invoke-virtual {v1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->clear()V

    .line 163
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->optimizableAppItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    invoke-virtual {v1}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->clear()V

    .line 164
    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v14, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v14, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 167
    .local v11, enable:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 168
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 169
    .local v13, info:Landroid/content/pm/ResolveInfo;
    iget-object v1, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 170
    .local v3, pName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pkgNames:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->installPkgNames:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance v0, Lcom/android/settings/autostarts/AppItem;

    invoke-virtual {p0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const v5, 0x7f0c0bd7

    invoke-virtual {p0, v5}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/autostarts/AppItem;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v0, item:Lcom/android/settings/autostarts/AppItem;
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->add(Lcom/android/settings/autostarts/AppItem;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pkgNames:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->optimizableAppItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->add(Lcom/android/settings/autostarts/AppItem;)V

    .line 167
    .end local v0           #item:Lcom/android/settings/autostarts/AppItem;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 178
    .end local v3           #pName:Ljava/lang/String;
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x200

    invoke-virtual {v1, v14, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 180
    .local v10, disable:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 181
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 182
    .restart local v13       #info:Landroid/content/pm/ResolveInfo;
    iget-object v1, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 183
    .restart local v3       #pName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pkgNames:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->installPkgNames:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    new-instance v0, Lcom/android/settings/autostarts/AppItem;

    invoke-virtual {p0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v1, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const v1, 0x7f0c0bd8

    invoke-virtual {p0, v1}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v0

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/autostarts/AppItem;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .restart local v0       #item:Lcom/android/settings/autostarts/AppItem;
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->add(Lcom/android/settings/autostarts/AppItem;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pkgNames:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v0           #item:Lcom/android/settings/autostarts/AppItem;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 190
    .end local v3           #pName:Ljava/lang/String;
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getActivity()Landroid/app/Activity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->am:Landroid/app/ActivityManager;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pm:Landroid/content/pm/PackageManager;

    .line 74
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/autostarts/LewaManageAutostarts;->setHasOptionsMenu(Z)V

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->installPkgNames:Ljava/util/List;

    .line 76
    iget-object v4, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 78
    .local v3, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->pm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 79
    .local v0, appFlags:I
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_0

    .line 80
    iget-object v4, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->installPkgNames:Ljava/util/List;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0           #appFlags:I
    :catch_0
    move-exception v1

    .line 83
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    iget-boolean v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->showOptimizeList:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0c0bde

    .line 92
    .local v0, textId:I
    :goto_0
    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->menuItem:Landroid/view/MenuItem;

    .line 93
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->menuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 95
    return-void

    .line 90
    .end local v0           #textId:I
    :cond_0
    const v0, 0x7f0c0bdd

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 120
    iput-object p1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 121
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400fb

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->mRootView:Landroid/view/View;

    .line 123
    new-instance v0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;-><init>(Lcom/android/settings/autostarts/LewaManageAutostarts;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    .line 124
    new-instance v0, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;-><init>(Lcom/android/settings/autostarts/LewaManageAutostarts;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->optimizableAppItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    .line 125
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appsList:Landroid/widget/ListView;

    .line 126
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->mRootView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->emptyView:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->emptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->emptyView:Landroid/widget/TextView;

    const v1, 0x7f0c0bdb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appsList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/autostarts/LewaManageAutostarts$1;

    invoke-direct {v1, p0}, Lcom/android/settings/autostarts/LewaManageAutostarts$1;-><init>(Lcom/android/settings/autostarts/LewaManageAutostarts;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->flush()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/autostarts/LewaManageAutostarts$2;

    invoke-direct {v1, p0}, Lcom/android/settings/autostarts/LewaManageAutostarts$2;-><init>(Lcom/android/settings/autostarts/LewaManageAutostarts;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 101
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->showOptimizeList:Z

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->showOptimizeList:Z

    .line 103
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->menuItem:Landroid/view/MenuItem;

    const v2, 0x7f0c0bdd

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 104
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f0c0bdb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appsList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 107
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->showOptimizeList:Z

    .line 108
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->menuItem:Landroid/view/MenuItem;

    const v2, 0x7f0c0bde

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 109
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f0c0bdc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->appsList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->optimizableAppItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startAutoStartApp(Lcom/android/settings/autostarts/AppItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0bd9

    invoke-virtual {p0, v2}, Lcom/android/settings/autostarts/LewaManageAutostarts;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts;->progressDialog:Landroid/app/ProgressDialog;

    .line 227
    new-instance v0, Lcom/android/settings/autostarts/LewaManageAutostarts$4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/autostarts/LewaManageAutostarts$4;-><init>(Lcom/android/settings/autostarts/LewaManageAutostarts;Lcom/android/settings/autostarts/AppItem;)V

    invoke-virtual {v0}, Lcom/android/settings/autostarts/LewaManageAutostarts$4;->start()V

    .line 250
    return-void
.end method
