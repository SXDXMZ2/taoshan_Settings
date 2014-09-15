.class public Lcom/android/settings/cyanogenmod/SpamList;
.super Landroid/app/ListFragment;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;,
        Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;,
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

.field private mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.cyanogenmod.spam"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "packages"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/SpamList;->PACKAGES_URI:Landroid/net/Uri;

    .line 56
    sget-object v0, Lcom/android/settings/cyanogenmod/SpamList;->PACKAGES_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/SpamList;->PACKAGES_NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/cyanogenmod/SpamList$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/SpamList$1;-><init>(Lcom/android/settings/cyanogenmod/SpamList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList;->mObserver:Landroid/database/ContentObserver;

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/SpamList;)Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList;->mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;)Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/SpamList;->mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;

    return-object p1
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/cyanogenmod/SpamList;->PACKAGES_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/cyanogenmod/SpamList;->PACKAGES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/cyanogenmod/SpamList;)Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;)Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/SpamList;->mAdapter:Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;

    return-object p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    new-instance v0, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;-><init>(Lcom/android/settings/cyanogenmod/SpamList;Lcom/android/settings/cyanogenmod/SpamList$1;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList;->mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;

    .line 88
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SpamList;->mTask:Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/SpamList$FetchFilterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/SpamList;->setHasOptionsMenu(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/cm/SpamFilter;->NOTIFICATION_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/SpamList;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x1

    const v1, 0x7f0801fe

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

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 77
    const v2, 0x109007f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, v:Landroid/view/View;
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, emptyView:Landroid/widget/TextView;
    const v2, 0x7f08042b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 81
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/SpamList;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 108
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SpamList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$NotificationStationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/SpamList;->startActivity(Landroid/content/Intent;)V

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
