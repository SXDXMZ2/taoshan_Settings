.class Lcom/android/settings/net/MobileDataEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/MobileDataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/net/MobileDataEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/net/MobileDataEnabler$1;->this$0:Lcom/android/settings/net/MobileDataEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/net/MobileDataEnabler$1;->this$0:Lcom/android/settings/net/MobileDataEnabler;

    #calls: Lcom/android/settings/net/MobileDataEnabler;->setSwitchState()V
    invoke-static {v0}, Lcom/android/settings/net/MobileDataEnabler;->access$000(Lcom/android/settings/net/MobileDataEnabler;)V

    .line 46
    return-void
.end method
