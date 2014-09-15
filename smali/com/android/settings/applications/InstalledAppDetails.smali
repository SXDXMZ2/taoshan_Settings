.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;,
        Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/settings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/settings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 100
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 124
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 125
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 155
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 156
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 157
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 158
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 159
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 160
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 161
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 200
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1385
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1416
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->setPrivacyGuard(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/InstalledAppDetails;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1398
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1414
    :goto_0
    return-void

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1404
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1406
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1408
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1410
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1411
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1376
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1379
    if-eqz v0, :cond_0

    .line 1380
    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1382
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1383
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 290
    packed-switch p1, :pswitch_data_0

    .line 304
    const-string v0, ""

    :goto_0
    return-object v0

    .line 292
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08087e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08087f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080880

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080881

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080882

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1455
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1461
    :goto_0
    return v0

    .line 1458
    :catch_0
    move-exception v0

    .line 1461
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 248
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 4
    .parameter "button"

    .prologue
    const v3, 0x7f080841

    .line 345
    const/4 v0, 0x0

    .line 349
    .local v0, disableable:Z
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 360
    :goto_0
    return v0

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    .line 353
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 354
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    :cond_2
    const v1, 0x7f080842

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 357
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f080843

    .line 255
    const/4 v0, 0x0

    .line 259
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x41

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 265
    const/4 v0, 0x0

    .line 266
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->protect:Z

    if-eqz v1, :cond_1

    .line 279
    const/4 v0, 0x0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 284
    if-eqz v0, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    :cond_2
    return-void

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 269
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v2, 0x7f080855

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 273
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 308
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    :goto_0
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    .line 313
    .local v0, dataOnly:Z
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_1

    move v0, v2

    .line 314
    :goto_1
    const/4 v1, 0x1

    .line 315
    .local v1, moveDisable:Z
    if-eqz v0, :cond_2

    .line 316
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f08087a

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 326
    :goto_2
    if-eqz v1, :cond_5

    .line 327
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #moveDisable:Z
    :cond_1
    move v0, v3

    .line 313
    goto :goto_1

    .line 317
    .restart local v1       #moveDisable:Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 318
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f08087b

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 320
    const/4 v1, 0x0

    goto :goto_2

    .line 322
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f08087c

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 323
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 324
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    .line 329
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 425
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 427
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 429
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 434
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 435
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 441
    :goto_1
    return-void

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 439
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 431
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initPrivacyGuardButton()V
    .locals 4

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    if-nez v1, :cond_0

    .line 452
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppOps:Landroid/app/AppOpsManager;

    .line 448
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/AppOpsManager;->getPrivacyGuardSettingForPackage(ILjava/lang/String;)Z

    move-result v0

    .line 450
    .local v0, isEnabled:Z
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 451
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 9

    .prologue
    const v8, 0x7f08083e

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 364
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 365
    const/4 v1, 0x1

    .line 366
    .local v1, enabled:Z
    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v4, :cond_7

    .line 367
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v8, 0x7f080844

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    .line 368
    const/4 v3, 0x0

    .line 369
    .local v3, specialDisable:Z
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 370
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v3

    .line 371
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    :cond_0
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v3, :cond_6

    move v4, v6

    :goto_1
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 391
    .end local v3           #specialDisable:Z
    :goto_2
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 392
    const/4 v1, 0x0

    .line 397
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->protect:Z

    if-eqz v4, :cond_2

    .line 398
    const/4 v1, 0x0

    .line 403
    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 404
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v2, homeActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 406
    .local v0, currentDefaultHome:Landroid/content/ComponentName;
    if-nez v0, :cond_b

    .line 409
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-le v4, v5, :cond_a

    move v1, v5

    .line 417
    .end local v0           #currentDefaultHome:Landroid/content/ComponentName;
    .end local v2           #homeActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 418
    if-eqz v1, :cond_4

    .line 420
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    :cond_4
    return-void

    .end local v1           #enabled:Z
    :cond_5
    move v4, v6

    .line 364
    goto :goto_0

    .restart local v1       #enabled:Z
    .restart local v3       #specialDisable:Z
    :cond_6
    move v4, v7

    .line 373
    goto :goto_1

    .line 375
    .end local v3           #specialDisable:Z
    :cond_7
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    .line 377
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    goto :goto_2

    .line 378
    :cond_8
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x80

    and-int/2addr v4, v7

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_9

    .line 383
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    .line 384
    const/4 v1, 0x0

    goto :goto_2

    .line 386
    :cond_9
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .restart local v0       #currentDefaultHome:Landroid/content/ComponentName;
    .restart local v2       #homeActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_a
    move v1, v6

    .line 409
    goto :goto_3

    .line 413
    :cond_b
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    move v1, v5

    :goto_4
    goto :goto_3

    :cond_c
    move v1, v6

    goto :goto_4
.end method

.method private initiateClearUserData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1145
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1147
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1148
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 1150
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1152
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1154
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 1155
    if-nez v0, :cond_1

    .line 1157
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1162
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f080862

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 336
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 337
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 340
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1099
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1100
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1101
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f080843

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1102
    if-ne v0, v4, :cond_0

    .line 1103
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1108
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1109
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 1126
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1127
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1129
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1130
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1131
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1137
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1138
    return-void

    .line 1135
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1112
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1113
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1114
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1115
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1116
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1123
    :goto_0
    return-void

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f08087d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1119
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1120
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1121
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 1032
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1034
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1035
    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 1036
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    :cond_1
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1042
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1092
    :goto_0
    return-void

    .line 1045
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1046
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 1047
    .local v2, codeSize:J
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 1048
    .local v4, dataSize:J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1049
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 1050
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    .line 1061
    :cond_3
    :goto_1
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_4

    .line 1062
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1063
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    :cond_4
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_5

    .line 1066
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1067
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    :cond_5
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 1070
    .local v0, cacheSize:J
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_6

    .line 1071
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1072
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    :cond_6
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 1075
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1076
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    :cond_7
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_b

    .line 1080
    :cond_8
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1085
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_c

    .line 1086
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1052
    .end local v0           #cacheSize:J
    :cond_9
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    .line 1053
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1054
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    :cond_a
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 1057
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1058
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1082
    .restart local v0       #cacheSize:J
    :cond_b
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1083
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1088
    :cond_c
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1089
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 750
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-eqz v0, :cond_1

    .line 977
    :cond_0
    :goto_0
    return v4

    .line 753
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v6

    .line 755
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_2

    move v4, v3

    .line 756
    goto :goto_0

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_3

    move v4, v3

    .line 760
    goto :goto_0

    .line 764
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 765
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 766
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    move v1, v3

    .line 767
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 768
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 769
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 770
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 774
    if-eqz v0, :cond_4

    .line 775
    const-string v7, "android.app.home.alternate"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-direct {p0, v0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 777
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 783
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 787
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v5, v6}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v6, v1}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    .line 796
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v7

    .line 799
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 800
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f0d00fd

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 801
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_6

    if-eqz v2, :cond_8

    :cond_6
    move v5, v4

    .line 802
    :goto_3
    if-nez v5, :cond_9

    if-nez v7, :cond_9

    .line 803
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 842
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 844
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0d0102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 860
    new-instance v5, Landroid/widget/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1, v6}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 861
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v7

    .line 865
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-gtz v1, :cond_7

    if-eqz v7, :cond_12

    .line 867
    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 872
    :goto_5
    const v1, 0x7f0d0103

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 874
    const v2, 0x7f0d0104

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 876
    if-eqz v7, :cond_13

    .line 878
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 879
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 880
    const v1, 0x7f0d0105

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 882
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v8, 0x7f0c0061

    const v9, 0x1090008

    invoke-static {v2, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 885
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 886
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 888
    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 889
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-direct {v2, v6, v7}, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 897
    :goto_6
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-lez v1, :cond_16

    .line 899
    const v1, 0x7f0d0107

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 901
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 902
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 905
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 906
    if-eqz v1, :cond_16

    array-length v0, v1

    if-le v0, v4, :cond_16

    .line 907
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 908
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 909
    aget-object v2, v1, v0

    .line 910
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 908
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 793
    :catch_0
    move-exception v0

    .line 794
    const-string v1, "InstalledAppDetails"

    const-string v2, "mUsbManager.hasDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto/16 :goto_2

    :cond_8
    move v5, v3

    .line 801
    goto/16 :goto_3

    .line 805
    :cond_9
    if-eqz v7, :cond_e

    if-eqz v5, :cond_e

    move v2, v4

    .line 807
    :goto_9
    if-eqz v7, :cond_f

    .line 808
    const v8, 0x7f080831

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 813
    :goto_a
    const/4 v0, 0x0

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 816
    if-eqz v5, :cond_b

    .line 817
    const v5, 0x7f080845

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 818
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 819
    if-eqz v2, :cond_a

    .line 820
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v9, v10, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 822
    :cond_a
    if-nez v0, :cond_10

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v9, v0, v3

    const-string v5, "\n"

    aput-object v5, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 825
    :cond_b
    :goto_b
    if-eqz v7, :cond_d

    .line 826
    const v5, 0x7f080846

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 828
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 829
    if-eqz v2, :cond_c

    .line 830
    new-instance v2, Landroid/text/style/BulletSpan;

    invoke-direct {v2, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v7, v2, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 833
    :cond_c
    if-nez v0, :cond_11

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v7, v0, v3

    const-string v2, "\n"

    aput-object v2, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 836
    :cond_d
    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 838
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_e
    move v2, v3

    .line 805
    goto :goto_9

    .line 810
    :cond_f
    const v8, 0x7f080830

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    .line 822
    :cond_10
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v0, v5, v3

    const-string v0, "\n"

    aput-object v0, v5, v4

    aput-object v9, v5, v11

    const-string v0, "\n"

    aput-object v0, v5, v13

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    .line 833
    :cond_11
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    const-string v0, "\n"

    aput-object v0, v2, v4

    aput-object v7, v2, v11

    const-string v0, "\n"

    aput-object v0, v2, v13

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 869
    :cond_12
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 893
    :cond_13
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 914
    :cond_14
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 915
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    .line 916
    :catch_1
    move-exception v2

    goto/16 :goto_8

    .line 919
    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 920
    if-lez v6, :cond_16

    .line 921
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 923
    if-ne v6, v4, :cond_19

    .line 924
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 937
    :goto_d
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0106

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 939
    const v2, 0x7f08086f

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v7, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    :cond_16
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 946
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 947
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 948
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 950
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v0, :cond_1d

    .line 952
    iput-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 953
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-nez v0, :cond_17

    move v3, v4

    :cond_17
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 973
    :cond_18
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 974
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initPrivacyGuardButton()V

    goto/16 :goto_0

    .line 925
    :cond_19
    if-ne v6, v11, :cond_1a

    .line 926
    const v0, 0x7f080870

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    .line 929
    :cond_1a
    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 930
    add-int/lit8 v0, v6, -0x3

    move-object v2, v1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_1c

    .line 931
    if-nez v1, :cond_1b

    const v0, 0x7f080872

    :goto_f
    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v2, v8, v4

    invoke-virtual {v7, v0, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 930
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 931
    :cond_1b
    const v0, 0x7f080873

    goto :goto_f

    .line 934
    :cond_1c
    const v0, 0x7f080871

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v3

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_d

    .line 958
    :cond_1d
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 961
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v1, :cond_18

    .line 965
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    move v4, v3

    goto/16 :goto_0

    .line 967
    :catch_2
    move-exception v0

    move v4, v3

    .line 968
    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1017
    const v0, 0x7f080830

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1018
    const v0, 0x7f080847

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1020
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1021
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 706
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 707
    .local v3, packageName:Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 708
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 710
    .local v2, intent:Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 711
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 714
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 715
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    .line 718
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2241

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_2
    return-object v3

    .end local v3           #packageName:Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 706
    goto :goto_0

    .line 708
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 723
    :catch_0
    move-exception v1

    .line 724
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 727
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 10
    .parameter "pkgInfo"

    .prologue
    const/4 v9, 0x0

    .line 635
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v5, 0x7f0d0011

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 636
    .local v0, appSnippet:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v9, v4, v9, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 638
    const v4, 0x7f0d0019

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 639
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 640
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    const v4, 0x7f0d001a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 643
    .local v2, label:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    const v4, 0x7f0d0125

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 646
    .local v3, packageName:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    const v4, 0x7f0d0126

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 651
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 652
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080879

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1025
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1026
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1027
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1028
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1029
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 1437
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1438
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1441
    .local v2, nm:Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1442
    .local v0, enable:Z
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    .end local v0           #enable:Z
    :goto_0
    return-void

    .line 1443
    :catch_0
    move-exception v1

    .line 1444
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setPrivacyGuard(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->setPrivacyGuardSettingForPackage(ILjava/lang/String;Z)V

    .line 1451
    return-void
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1165
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 1166
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1167
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1168
    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "pkg1"
    .parameter "pkg2"

    .prologue
    .line 735
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 738
    .local v0, match:I
    if-ltz v0, :cond_0

    .line 739
    const/4 v1, 0x1

    .line 746
    .end local v0           #match:I
    :goto_0
    return v1

    .line 741
    :catch_0
    move-exception v1

    .line 746
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1367
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1368
    const-string v0, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1369
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1370
    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1371
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1394
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1395
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 581
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 582
    if-ne p1, v5, :cond_2

    .line 583
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 584
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 586
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 589
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 590
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 598
    invoke-direct {p0, v5, v5}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 610
    :cond_1
    :goto_1
    return-void

    .line 600
    :cond_2
    if-ne p1, v1, :cond_1

    .line 601
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 603
    :pswitch_0
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$1;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$ToggleProtectedAppComponents;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 594
    :catch_0
    move-exception v1

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1536
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1537
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1539
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1540
    invoke-virtual {v0, v3, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1541
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1542
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1544
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_5

    .line 1545
    if-nez p2, :cond_4

    .line 1546
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1548
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0

    .line 1550
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_0

    .line 1551
    if-eqz p2, :cond_6

    .line 1552
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1554
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setPrivacyGuard(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1469
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1470
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 1471
    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_1

    .line 1472
    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1475
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 1476
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1478
    :cond_2
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1482
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    .line 1483
    invoke-direct {p0, v2, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1485
    :cond_4
    invoke-direct {p0, v2, v4, v4}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1488
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_6

    .line 1489
    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1490
    :cond_6
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 1491
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1493
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1498
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1500
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1501
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1502
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 1503
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1504
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1505
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1506
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1511
    :cond_8
    invoke-direct {p0, v1, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1513
    :cond_9
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_b

    .line 1515
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_a

    .line 1516
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1518
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1519
    :cond_b
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_c

    .line 1520
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1522
    :cond_c
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 1523
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_d

    .line 1524
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1526
    :cond_d
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    move v0, v1

    .line 1528
    :cond_e
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1529
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1530
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 460
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/ApplicationsState;->newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 463
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 464
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 467
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 469
    new-instance v1, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 472
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 474
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 476
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 477
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 537
    const v0, 0x7f08083f

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 539
    const/4 v0, 0x2

    const v1, 0x7f08041b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 542
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0d0231

    const v7, 0x7f0d0230

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 482
    const v3, 0x7f040052

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 483
    .local v2, view:Landroid/view/View;
    invoke-static {p2, v2, v2, v5}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 485
    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080876

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 489
    const v3, 0x7f0d00ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 490
    const v3, 0x7f0d00ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 491
    const v3, 0x7f0d00f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 492
    const v3, 0x7f0d00f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 493
    const v3, 0x7f0d00f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 495
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 501
    :cond_0
    const v3, 0x7f0d00e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 502
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 503
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v4, 0x7f080838

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 504
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 505
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 508
    const v3, 0x7f0d00e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 509
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 511
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 514
    const v3, 0x7f0d00f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 515
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 516
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 519
    const v3, 0x7f0d00fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 520
    const v3, 0x7f0d00fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 522
    const v3, 0x7f0d00fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 525
    const v3, 0x7f0d00ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 526
    const v3, 0x7f0d0100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 527
    const v3, 0x7f0d0101

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 529
    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 530
    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    .line 532
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 567
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 568
    if-ne v2, v0, :cond_0

    .line 569
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 576
    :goto_0
    return v0

    .line 571
    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    .line 573
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/applications/LockPatternActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    move v0, v1

    .line 576
    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 682
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 687
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 698
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 672
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 673
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 674
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    .line 546
    const/4 v0, 0x1

    .line 547
    .local v0, showIt:Z
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 548
    const/4 v0, 0x0

    .line 560
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 562
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->protect:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 563
    return-void

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 550
    const/4 v0, 0x0

    goto :goto_0

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 552
    const/4 v0, 0x0

    goto :goto_0

    .line 553
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 554
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 555
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 556
    const/4 v0, 0x0

    goto :goto_0

    .line 557
    :cond_6
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 558
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 662
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 664
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 665
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 668
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 702
    return-void
.end method
