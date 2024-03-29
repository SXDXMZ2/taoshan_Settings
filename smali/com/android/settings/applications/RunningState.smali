.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$UserState;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$UserState;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 139
    iput v2, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 141
    new-instance v0, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 739
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 740
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 741
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 742
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 743
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .line 744
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 745
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 746
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 747
    new-instance v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 748
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter
    .parameter "newItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local p3, userItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 825
    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 826
    .local v3, userItem:Lcom/android/settings/applications/RunningState$MergedItem;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v7, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v4, v7, :cond_5

    :cond_0
    move v0, v6

    .line 827
    .local v0, first:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 828
    if-nez v3, :cond_6

    .line 829
    new-instance v3, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v3           #userItem:Lcom/android/settings/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v3, v4}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 830
    .restart local v3       #userItem:Lcom/android/settings/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 834
    :goto_1
    iget v4, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    .line 835
    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    iget v7, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$UserState;

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-nez v4, :cond_3

    .line 836
    new-instance v4, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {v4}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    .line 837
    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v7, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 838
    .local v1, info:Landroid/content/pm/UserInfo;
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v1, v4, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 839
    if-eqz v1, :cond_1

    .line 840
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v7, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {p1, v7, v1, v8}, Lcom/android/settings/users/UserUtils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v4, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 843
    :cond_1
    if-eqz v1, :cond_7

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 844
    .local v2, name:Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    .line 845
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 849
    :cond_2
    :goto_3
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c089a

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-virtual {v7, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 852
    .end local v1           #info:Landroid/content/pm/UserInfo;
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_4
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    return-void

    .end local v0           #first:Z
    :cond_5
    move v0, v5

    .line 826
    goto :goto_0

    .line 832
    .restart local v0       #first:Z
    :cond_6
    iget-object v4, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 843
    .restart local v1       #info:Landroid/content/pm/UserInfo;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 846
    .restart local v2       #name:Ljava/lang/String;
    :cond_8
    if-nez v1, :cond_2

    .line 847
    const v4, 0x7f0c0847

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2
    .parameter "context"

    .prologue
    .line 730
    sget-object v1, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 731
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Lcom/android/settings/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    .line 734
    :cond_0
    sget-object v0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v1

    return-object v0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x1

    .line 800
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v0

    .line 803
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 810
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 713
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 715
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 716
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 726
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 721
    :cond_2
    move-object v0, p1

    .line 722
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 723
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 724
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 815
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 816
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 817
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 818
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 819
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 820
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 821
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 64
    .parameter "context"
    .parameter "am"

    .prologue
    .line 858
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v45

    .line 860
    .local v45, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    add-int/lit8 v60, v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 862
    const/16 v17, 0x0

    .line 866
    .local v17, changed:Z
    const/16 v60, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v52

    .line 868
    .local v52, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v52, :cond_1

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v10

    .line 869
    .local v10, NS:I
    :goto_0
    const/16 v25, 0x0

    .local v25, i:I
    :goto_1
    move/from16 v0, v25

    if-ge v0, v10, :cond_3

    .line 870
    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 874
    .local v53, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v60, v0

    if-nez v60, :cond_2

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v60, v0

    if-nez v60, :cond_2

    .line 875
    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 876
    add-int/lit8 v25, v25, -0x1

    .line 877
    add-int/lit8 v10, v10, -0x1

    .line 869
    :cond_0
    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 868
    .end local v10           #NS:I
    .end local v25           #i:I
    .end local v53           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 882
    .restart local v10       #NS:I
    .restart local v25       #i:I
    .restart local v53       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v60, v0

    and-int/lit8 v60, v60, 0x8

    if-eqz v60, :cond_0

    .line 884
    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 885
    add-int/lit8 v25, v25, -0x1

    .line 886
    add-int/lit8 v10, v10, -0x1

    .line 887
    goto :goto_2

    .line 893
    .end local v53           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v47

    .line 895
    .local v47, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v47, :cond_4

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v8

    .line 896
    .local v8, NP:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    .line 897
    const/16 v25, 0x0

    :goto_4
    move/from16 v0, v25

    if-ge v0, v8, :cond_5

    .line 898
    move-object/from16 v0, v47

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 899
    .local v41, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    new-instance v62, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v60 .. v62}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 897
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 895
    .end local v8           #NP:I
    .end local v41           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 904
    .restart local v8       #NP:I
    :cond_5
    const/16 v25, 0x0

    :goto_5
    move/from16 v0, v25

    if-ge v0, v10, :cond_7

    .line 905
    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 906
    .restart local v53       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v53

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x0

    cmp-long v60, v60, v62

    if-nez v60, :cond_6

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v60, v0

    if-lez v60, :cond_6

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 908
    .local v12, ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v12, :cond_6

    .line 909
    const/16 v60, 0x1

    move/from16 v0, v60

    iput-boolean v0, v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 910
    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v60, v0

    if-eqz v60, :cond_6

    .line 911
    const/16 v60, 0x1

    move/from16 v0, v60

    iput-boolean v0, v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 904
    .end local v12           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 918
    .end local v53           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v25, 0x0

    :goto_6
    move/from16 v0, v25

    if-ge v0, v10, :cond_13

    .line 919
    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 926
    .restart local v53       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v53

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x0

    cmp-long v60, v60, v62

    if-nez v60, :cond_b

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v60, v0

    if-lez v60, :cond_b

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 928
    .restart local v12       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v12, :cond_b

    iget-boolean v0, v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v60, v0

    if-nez v60, :cond_b

    .line 934
    iget-object v0, v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0x12c

    move/from16 v0, v60

    move/from16 v1, v61

    if-ge v0, v1, :cond_b

    .line 938
    const/16 v55, 0x0

    .line 939
    .local v55, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    iget-object v0, v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 940
    .restart local v12       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v12, :cond_9

    .line 941
    iget-boolean v0, v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v60, v0

    if-nez v60, :cond_8

    iget-object v0, v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v60

    if-eqz v60, :cond_a

    .line 942
    :cond_8
    const/16 v55, 0x1

    .line 947
    :cond_9
    if-eqz v55, :cond_b

    .line 918
    .end local v12           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v55           #skip:Z
    :goto_8
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_6

    .line 945
    .restart local v12       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .restart local v55       #skip:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    iget-object v0, v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    check-cast v12, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .restart local v12       #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    goto :goto_7

    .line 954
    .end local v12           #ainfo:Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v55           #skip:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    .line 955
    .local v48, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    if-nez v48, :cond_c

    .line 956
    new-instance v48, Ljava/util/HashMap;

    .end local v48           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v48 .. v48}, Ljava/util/HashMap;-><init>()V

    .line 957
    .restart local v48       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v61, v0

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 959
    :cond_c
    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 960
    .local v46, proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v46, :cond_d

    .line 961
    const/16 v17, 0x1

    .line 962
    new-instance v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v60, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v61

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 963
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    :cond_d
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_11

    .line 967
    move-object/from16 v0, v53

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x0

    cmp-long v60, v60, v62

    if-nez v60, :cond_12

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v42, v0

    .line 968
    .local v42, pid:I
    :goto_9
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    move/from16 v0, v42

    move/from16 v1, v60

    if-eq v0, v1, :cond_10

    .line 969
    const/16 v17, 0x1

    .line 970
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    move/from16 v0, v60

    move/from16 v1, v42

    if-eq v0, v1, :cond_10

    .line 971
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-eqz v60, :cond_e

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->remove(I)V

    .line 974
    :cond_e
    if-eqz v42, :cond_f

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v42

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 977
    :cond_f
    move/from16 v0, v42

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 980
    :cond_10
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    .line 981
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 983
    .end local v42           #pid:I
    :cond_11
    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v60

    or-int v17, v17, v60

    goto/16 :goto_8

    .line 967
    :cond_12
    const/16 v42, 0x0

    goto :goto_9

    .line 988
    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v48           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v53           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/16 v25, 0x0

    :goto_a
    move/from16 v0, v25

    if-ge v0, v8, :cond_18

    .line 989
    move-object/from16 v0, v47

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 990
    .restart local v41       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 991
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v46, :cond_15

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 996
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v46, :cond_14

    .line 997
    const/16 v17, 0x1

    .line 998
    new-instance v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v60, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v61

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 999
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1002
    :cond_14
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    .line 1005
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v60

    if-eqz v60, :cond_17

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v60

    if-nez v60, :cond_16

    .line 1007
    const/16 v17, 0x1

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1011
    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1012
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1017
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1018
    move-object/from16 v0, v41

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 988
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_a

    .line 1014
    :cond_17
    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 1023
    .end local v41           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1024
    .local v9, NRP:I
    const/16 v25, 0x0

    :goto_c
    move/from16 v0, v25

    if-ge v0, v9, :cond_1d

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1026
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_1c

    .line 1027
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v19, v0

    .line 1028
    .local v19, clientPid:I
    if-eqz v19, :cond_1b

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1030
    .local v18, client:Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v18, :cond_19

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    check-cast v18, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1033
    .restart local v18       #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_19
    if-eqz v18, :cond_1a

    .line 1034
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1042
    .end local v18           #client:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1a
    :goto_d
    add-int/lit8 v25, v25, 0x1

    .line 1043
    goto :goto_c

    .line 1040
    :cond_1b
    const/16 v60, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    goto :goto_d

    .line 1044
    .end local v19           #clientPid:I
    :cond_1c
    const/16 v17, 0x1

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v61

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->remove(I)V

    .line 1046
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_c

    .line 1051
    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1052
    .local v7, NHP:I
    const/16 v25, 0x0

    :goto_e
    move/from16 v0, v25

    if-ge v0, v7, :cond_20

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1054
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v60, v0

    if-eqz v60, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v60

    if-nez v60, :cond_1f

    .line 1055
    :cond_1e
    const/16 v17, 0x1

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1057
    add-int/lit8 v25, v25, -0x1

    .line 1058
    add-int/lit8 v7, v7, -0x1

    .line 1052
    :cond_1f
    add-int/lit8 v25, v25, 0x1

    goto :goto_e

    .line 1065
    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1066
    .local v5, NAP:I
    const/16 v25, 0x0

    :goto_f
    move/from16 v0, v25

    if-ge v0, v5, :cond_22

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1068
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_21

    .line 1069
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v60

    or-int v17, v17, v60

    .line 1066
    :cond_21
    add-int/lit8 v25, v25, 0x1

    goto :goto_f

    .line 1074
    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_22
    const/16 v58, 0x0

    .line 1075
    .local v58, uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v25, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v60

    move/from16 v0, v25

    move/from16 v1, v60

    if-ge v0, v1, :cond_2a

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    .line 1077
    .restart local v48       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v48 .. v48}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .line 1078
    .local v44, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_29

    .line 1079
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1080
    .local v41, pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_26

    .line 1081
    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1082
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-nez v60, :cond_24

    .line 1085
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    .line 1101
    :cond_24
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .line 1102
    .local v54, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_23

    .line 1103
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1104
    .local v53, si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_25

    .line 1105
    const/16 v17, 0x1

    .line 1106
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 1088
    .end local v53           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    .end local v54           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :cond_26
    const/16 v17, 0x1

    .line 1089
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->remove()V

    .line 1090
    invoke-virtual/range {v48 .. v48}, Ljava/util/HashMap;->size()I

    move-result v60

    if-nez v60, :cond_28

    .line 1091
    if-nez v58, :cond_27

    .line 1092
    new-instance v58, Ljava/util/ArrayList;

    .end local v58           #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    .restart local v58       #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v58

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_28
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-eqz v60, :cond_23

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 1075
    .end local v41           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_29
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_10

    .line 1112
    .end local v44           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v48           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_2a
    if-eqz v58, :cond_2b

    .line 1113
    const/16 v25, 0x0

    :goto_13
    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v25

    move/from16 v1, v60

    if-ge v0, v1, :cond_2b

    .line 1114
    move-object/from16 v0, v58

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Integer;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v57

    .line 1115
    .local v57, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1113
    add-int/lit8 v25, v25, 0x1

    goto :goto_13

    .line 1119
    .end local v57           #uid:I
    :cond_2b
    if-eqz v17, :cond_40

    .line 1121
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v56, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    const/16 v25, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v60

    move/from16 v0, v25

    move/from16 v1, v60

    if-ge v0, v1, :cond_30

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/util/HashMap;

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_15
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_2f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1124
    .restart local v41       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1125
    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1126
    const-wide v60, 0x7fffffffffffffffL

    move-wide/from16 v0, v60

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1127
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_2e

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1128
    .restart local v53       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v60, v0

    if-eqz v60, :cond_2d

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v60, v0

    and-int/lit8 v60, v60, 0x1

    if-eqz v60, :cond_2d

    .line 1131
    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1133
    :cond_2d
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v60, v0

    if-eqz v60, :cond_2c

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v60, v0

    if-eqz v60, :cond_2c

    .line 1135
    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1136
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v60, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v62, v0

    cmp-long v60, v60, v62

    if-lez v60, :cond_2c

    .line 1137
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v60, v0

    move-wide/from16 v0, v60

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 1141
    .end local v53           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1122
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v41           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_2f
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_14

    .line 1145
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v60, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v60

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1147
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v33, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v34, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v40, 0x0

    .line 1150
    .local v40, otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    .line 1151
    const/16 v25, 0x0

    :goto_17
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v25

    move/from16 v1, v60

    if-ge v0, v1, :cond_39

    .line 1152
    move-object/from16 v0, v56

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1153
    .restart local v41       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1157
    .local v21, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1159
    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-lez v60, :cond_31

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    :cond_31
    const/16 v28, 0x0

    .line 1166
    .local v28, mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    const/16 v24, 0x0

    .line 1167
    .local v24, haveAllMerged:Z
    const/16 v30, 0x0

    .line 1168
    .local v30, needDivider:Z
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_34

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1169
    .restart local v53       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move/from16 v0, v30

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1170
    const/16 v30, 0x1

    .line 1171
    move-object/from16 v0, v33

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    if-eqz v60, :cond_33

    .line 1173
    if-eqz v28, :cond_32

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v60

    if-eq v0, v1, :cond_32

    .line 1174
    const/16 v24, 0x0

    .line 1176
    :cond_32
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v28, v0

    goto :goto_18

    .line 1178
    :cond_33
    const/16 v24, 0x0

    goto :goto_18

    .line 1182
    .end local v53           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_34
    if-eqz v24, :cond_35

    if-eqz v28, :cond_35

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->size()I

    move-result v61

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_37

    .line 1185
    :cond_35
    new-instance v28, Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v28           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, v28

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1186
    .restart local v28       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_19
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_36

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1187
    .restart local v53       #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    move-object/from16 v0, v28

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_19

    .line 1190
    .end local v53           #si:Lcom/android/settings/applications/RunningState$ServiceItem;
    :cond_36
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1191
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    .line 1192
    move/from16 v29, v21

    .local v29, mpi:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    add-int/lit8 v60, v60, -0x1

    move/from16 v0, v29

    move/from16 v1, v60

    if-ge v0, v1, :cond_37

    .line 1193
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    add-int/lit8 v29, v29, 0x1

    goto :goto_1a

    .line 1197
    .end local v29           #mpi:I
    :cond_37
    const/16 v60, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1198
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_38

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v60

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1151
    :goto_1b
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_17

    .line 1201
    :cond_38
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1207
    .end local v21           #firstProc:I
    .end local v24           #haveAllMerged:Z
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v28           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v30           #needDivider:Z
    .end local v41           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1208
    const/16 v25, 0x0

    :goto_1c
    move/from16 v0, v25

    if-ge v0, v7, :cond_3d

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1210
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v60, v0

    if-nez v60, :cond_3b

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->size()I

    move-result v60

    if-gtz v60, :cond_3b

    .line 1211
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    if-nez v60, :cond_3a

    .line 1212
    new-instance v60, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v61, v0

    invoke-direct/range {v60 .. v61}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1213
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1215
    :cond_3a
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    const/16 v61, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1216
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_3c

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v60

    move-object/from16 v4, v61

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1222
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    :cond_3b
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1c

    .line 1220
    :cond_3c
    const/16 v60, 0x0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v34

    move/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    .line 1228
    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1229
    .local v11, NU:I
    const/16 v25, 0x0

    :goto_1e
    move/from16 v0, v25

    if-ge v0, v11, :cond_3f

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1231
    .local v59, user:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_3e

    .line 1232
    const/16 v60, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1229
    :cond_3e
    add-int/lit8 v25, v25, 0x1

    goto :goto_1e

    .line 1236
    .end local v59           #user:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v61, v0

    monitor-enter v61

    .line 1237
    :try_start_0
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1238
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1239
    monitor-exit v61
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    .end local v11           #NU:I
    .end local v33           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v34           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v40           #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v56           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1246
    const/16 v36, 0x0

    .line 1247
    .local v36, numBackgroundProcesses:I
    const/16 v37, 0x0

    .line 1248
    .local v37, numForegroundProcesses:I
    const/16 v39, 0x0

    .line 1249
    .local v39, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1250
    const/16 v25, 0x0

    :goto_1f
    move/from16 v0, v25

    if-ge v0, v9, :cond_44

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1252
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_43

    .line 1255
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0x190

    move/from16 v0, v60

    move/from16 v1, v61

    if-lt v0, v1, :cond_41

    .line 1257
    add-int/lit8 v36, v36, 0x1

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    :goto_20
    add-int/lit8 v25, v25, 0x1

    goto :goto_1f

    .line 1239
    .end local v36           #numBackgroundProcesses:I
    .end local v37           #numForegroundProcesses:I
    .end local v39           #numServiceProcesses:I
    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v11       #NU:I
    .restart local v33       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .restart local v34       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v40       #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v56       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v60

    :try_start_1
    monitor-exit v61
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v60

    .line 1259
    .end local v11           #NU:I
    .end local v33           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v34           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v40           #otherUsers:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v56           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .restart local v36       #numBackgroundProcesses:I
    .restart local v37       #numForegroundProcesses:I
    .restart local v39       #numServiceProcesses:I
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_41
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0xc8

    move/from16 v0, v60

    move/from16 v1, v61

    if-gt v0, v1, :cond_42

    .line 1261
    add-int/lit8 v37, v37, 0x1

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1264
    :cond_42
    const-string v60, "RunningState"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "Unknown non-service process: "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " #"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1268
    :cond_43
    add-int/lit8 v39, v39, 0x1

    goto :goto_20

    .line 1272
    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_44
    const-wide/16 v13, 0x0

    .line 1273
    .local v13, backgroundProcessMemory:J
    const-wide/16 v22, 0x0

    .line 1274
    .local v22, foregroundProcessMemory:J
    const-wide/16 v50, 0x0

    .line 1275
    .local v50, serviceProcessMemory:J
    const/16 v31, 0x0

    .line 1276
    .local v31, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v35, 0x0

    .line 1277
    .local v35, newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v20, 0x0

    .line 1279
    .local v20, diffUsers:Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v38

    .line 1280
    .local v38, numProc:I
    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v43, v0

    .line 1281
    .local v43, pids:[I
    const/16 v25, 0x0

    :goto_21
    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_45

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    aput v60, v43, v25

    .line 1281
    add-int/lit8 v25, v25, 0x1

    goto :goto_21

    .line 1284
    :cond_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v49

    .line 1286
    .local v49, pss:[J
    const/4 v15, 0x0

    .line 1287
    .local v15, bgIndex:I
    const/16 v25, 0x0

    move-object/from16 v32, v31

    .end local v31           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v32, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_22
    :try_start_3
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v60, v0

    move/from16 v0, v25

    move/from16 v1, v60

    if-ge v0, v1, :cond_4f

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1289
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    aget-wide v60, v49, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-wide/from16 v2, v60

    move/from16 v4, v62

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v60

    or-int v17, v17, v60

    .line 1290
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_46

    .line 1291
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v60, v0

    add-long v50, v50, v60

    move-object/from16 v31, v32

    .line 1287
    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_23
    add-int/lit8 v25, v25, 0x1

    move-object/from16 v32, v31

    .end local v31           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto :goto_22

    .line 1292
    :cond_46
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0x190

    move/from16 v0, v60

    move/from16 v1, v61

    if-lt v0, v1, :cond_4e

    .line 1294
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v60, v0

    add-long v13, v13, v60

    .line 1296
    if-eqz v32, :cond_48

    .line 1297
    new-instance v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, v28

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1298
    .restart local v28       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1299
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_47

    const/16 v60, 0x1

    :goto_24
    or-int v20, v20, v60

    .line 1300
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v31, v32

    .line 1318
    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_25
    const/16 v60, 0x1

    :try_start_4
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1319
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1320
    add-int/lit8 v15, v15, 0x1

    .line 1321
    goto :goto_23

    .line 1299
    .end local v31           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_47
    const/16 v60, 0x0

    goto :goto_24

    .line 1302
    .end local v28           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_48
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v60

    if-ge v15, v0, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_4d

    .line 1304
    :cond_49
    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1305
    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v16, 0x0

    .local v16, bgi:I
    :goto_26
    move/from16 v0, v16

    if-ge v0, v15, :cond_4b

    .line 1306
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1307
    .restart local v28       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_4a

    const/16 v60, 0x1

    :goto_27
    or-int v20, v20, v60

    .line 1308
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    add-int/lit8 v16, v16, 0x1

    goto :goto_26

    .line 1307
    :cond_4a
    const/16 v60, 0x0

    goto :goto_27

    .line 1310
    .end local v28           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_4b
    new-instance v28, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, v28

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1311
    .restart local v28       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1312
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_4c

    const/16 v60, 0x1

    :goto_28
    or-int v20, v20, v60

    .line 1313
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_25

    .line 1326
    .end local v15           #bgIndex:I
    .end local v16           #bgi:I
    .end local v28           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v38           #numProc:I
    .end local v43           #pids:[I
    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v49           #pss:[J
    :catch_0
    move-exception v60

    .line 1329
    :goto_29
    if-nez v31, :cond_51

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v60

    move/from16 v1, v36

    if-le v0, v1, :cond_51

    .line 1332
    new-instance v31, Ljava/util/ArrayList;

    .end local v31           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1333
    .restart local v31       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v16, 0x0

    .restart local v16       #bgi:I
    :goto_2a
    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_51

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1335
    .restart local v28       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_50

    const/16 v60, 0x1

    :goto_2b
    or-int v20, v20, v60

    .line 1336
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    add-int/lit8 v16, v16, 0x1

    goto :goto_2a

    .line 1312
    .restart local v15       #bgIndex:I
    .restart local v38       #numProc:I
    .restart local v43       #pids:[I
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v49       #pss:[J
    :cond_4c
    const/16 v60, 0x0

    goto :goto_28

    .line 1315
    .end local v16           #bgi:I
    .end local v28           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v31           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    .restart local v28       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v31, v32

    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_25

    .line 1321
    .end local v28           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v31           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4e
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0xc8

    move/from16 v0, v60

    move/from16 v1, v61

    if-gt v0, v1, :cond_5a

    .line 1323
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v60, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v22, v22, v60

    move-object/from16 v31, v32

    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v31           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v46           #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_4f
    move-object/from16 v31, v32

    .line 1327
    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .line 1335
    .end local v15           #bgIndex:I
    .end local v38           #numProc:I
    .end local v43           #pids:[I
    .end local v49           #pss:[J
    .restart local v16       #bgi:I
    .restart local v28       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_50
    const/16 v60, 0x0

    goto :goto_2b

    .line 1341
    .end local v16           #bgi:I
    .end local v28           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_51
    if-eqz v31, :cond_52

    .line 1344
    if-nez v20, :cond_53

    .line 1346
    move-object/from16 v35, v31

    .line 1374
    :cond_52
    const/16 v25, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v25

    move/from16 v1, v60

    if-ge v0, v1, :cond_57

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1374
    add-int/lit8 v25, v25, 0x1

    goto :goto_2c

    .line 1350
    :cond_53
    new-instance v35, Ljava/util/ArrayList;

    .end local v35           #newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .restart local v35       #newUserBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1352
    .local v6, NB:I
    const/16 v25, 0x0

    :goto_2d
    move/from16 v0, v25

    if-ge v0, v6, :cond_55

    .line 1353
    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1354
    .restart local v28       #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_54

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v60

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 1352
    :goto_2e
    add-int/lit8 v25, v25, 0x1

    goto :goto_2d

    .line 1358
    :cond_54
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1363
    .end local v28           #mergedItem:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1364
    .restart local v11       #NU:I
    const/16 v25, 0x0

    :goto_2f
    move/from16 v0, v25

    if-ge v0, v11, :cond_52

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1366
    .restart local v59       #user:Lcom/android/settings/applications/RunningState$MergedItem;
    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_56

    .line 1367
    const/16 v60, 0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1368
    move-object/from16 v0, v59

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1364
    :cond_56
    add-int/lit8 v25, v25, 0x1

    goto :goto_2f

    .line 1378
    .end local v6           #NB:I
    .end local v11           #NU:I
    .end local v59           #user:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v61, v0

    monitor-enter v61

    .line 1379
    :try_start_8
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1380
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1381
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 1382
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1383
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1384
    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    .line 1385
    if-eqz v31, :cond_58

    .line 1386
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1387
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1388
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v60, v0

    if-eqz v60, :cond_58

    .line 1389
    const/16 v17, 0x1

    .line 1392
    :cond_58
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    move/from16 v60, v0

    if-nez v60, :cond_59

    .line 1393
    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->notifyAll()V

    .line 1396
    :cond_59
    monitor-exit v61

    .line 1398
    return v17

    .line 1396
    :catchall_1
    move-exception v60

    monitor-exit v61
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v60

    .line 1326
    .end local v31           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v15       #bgIndex:I
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v38       #numProc:I
    .restart local v43       #pids:[I
    .restart local v49       #pss:[J
    :catch_1
    move-exception v60

    move-object/from16 v31, v32

    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .end local v31           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v32       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v46       #proc:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_5a
    move-object/from16 v31, v32

    .end local v32           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v31       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1420
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1421
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1422
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1414
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1415
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 776
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 795
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 796
    monitor-exit v1

    .line 797
    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 751
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 752
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 753
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 754
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 756
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 757
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 758
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 764
    monitor-exit v1

    .line 765
    return-void

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .parameter "watching"

    .prologue
    .line 1408
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1409
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1410
    monitor-exit v1

    .line 1411
    return-void

    .line 1410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 768
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 770
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 771
    monitor-exit v1

    .line 772
    return-void

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    .prologue
    .line 781
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 782
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 784
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    goto :goto_0

    .line 788
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 789
    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
