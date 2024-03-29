.class public Lcom/android/settings/cyanogenmod/SpamList;
.super Landroid/app/ListFragment;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;,
        Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;,
        Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;,
        Lcom/android/settings/cyanogenmod/SpamList$PackageInfo;,
        Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;
    }
.end annotation


# static fields
.field private static final PACKAGES_NOTIFICATION_URI:Landroid/net/Uri;

.field private static final PACKAGES_URI:Landroid/net/Uri;


# instance fields
.field private mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

.field private mObserver:Landroid/database/ContentObserver;

.field private mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 46
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    const-string v1, "com.cyanogenmod.spam"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    const-string v1, "packages"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/settings/cyanogenmod/SpamList;->PACKAGES_URI:Landroid/net/Uri;

    .line 51
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/settings/cyanogenmod/SpamList;->PACKAGES_NOTIFICATION_URI:Landroid/net/Uri;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 106
    new-instance v0, Lcom/android/settings/cyanogenmod/SpamList$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/SpamList$2;-><init>(Lcom/android/settings/cyanogenmod/SpamList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList;->mObserver:Landroid/database/ContentObserver;

    .line 223
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/SpamList;)Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;)Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/SpamList;)Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList;->mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;)Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/SpamList;->mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;

    return-object p1
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/settings/cyanogenmod/SpamList;->PACKAGES_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/settings/cyanogenmod/SpamList;->PACKAGES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addEmptyView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 71
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v1, v:Landroid/widget/TextView;
    const v2, 0x7f0c0425

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 75
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    new-instance v0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;-><init>(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$1;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList;->mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;

    .line 62
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList;->mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilters;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/SpamList;->addEmptyView()V

    .line 65
    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/SpamList;->setHasOptionsMenu(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/cm/SpamFilter;->NOTIFICATION_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/SpamList;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 119
    const/4 v0, 0x1

    const v1, 0x7f0c01fa

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/SpamList;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 142
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 81
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    invoke-virtual {v7, p3}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->getItemViewType(I)I

    move-result v7

    if-nez v7, :cond_0

    .line 104
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    invoke-virtual {v7, p3}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;->getItem(I)Lcom/android/settings/cyanogenmod/SpamList$ItemInfo;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;

    .line 85
    .local v4, info:Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    iget-object v7, v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 87
    iget v7, v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->count:I

    if-nez v7, :cond_1

    const v1, 0x7f0c0422

    .line 88
    .local v1, baseTitleId:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, baseTitle:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v5, msg:Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->date:J

    invoke-static {v9, v10}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c03ee

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Lcom/android/settings/cyanogenmod/SpamList$NotificationInfo;->count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    const v7, 0x7f0c01f5

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    const v7, 0x7f0c0269

    new-instance v8, Lcom/android/settings/cyanogenmod/SpamList$1;

    invoke-direct {v8, p0, p3}, Lcom/android/settings/cyanogenmod/SpamList$1;-><init>(Lcom/android/settings/cyanogenmod/SpamList;I)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    .line 102
    .local v3, dialog:Landroid/app/AlertDialog;
    const v7, 0x102000b

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 103
    .local v6, textView:Landroid/widget/TextView;
    const/high16 v7, 0x4188

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 87
    .end local v0           #baseTitle:Ljava/lang/String;
    .end local v1           #baseTitleId:I
    .end local v3           #dialog:Landroid/app/AlertDialog;
    .end local v5           #msg:Ljava/lang/StringBuilder;
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_1
    const v1, 0x7f0c0423

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 130
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$NotificationStationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/SpamList;->startActivity(Landroid/content/Intent;)V

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
