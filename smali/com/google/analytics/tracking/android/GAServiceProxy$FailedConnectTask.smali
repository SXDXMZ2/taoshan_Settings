.class Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/GAServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FailedConnectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    #getter for: Lcom/google/analytics/tracking/android/GAServiceProxy;->state:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$400(Lcom/google/analytics/tracking/android/GAServiceProxy;)Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;->CONNECTING:Lcom/google/analytics/tracking/android/GAServiceProxy$ConnectState;

    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$FailedConnectTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    #calls: Lcom/google/analytics/tracking/android/GAServiceProxy;->useStore()V
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$500(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    .line 351
    :cond_0
    return-void
.end method
