.class Lcom/android/settings/headsup/HeadsUpSettings$1;
.super Landroid/database/ContentObserver;
.source "HeadsUpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/headsup/HeadsUpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/headsup/HeadsUpSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/headsup/HeadsUpSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/headsup/HeadsUpSettings$1;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings$1;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    #calls: Lcom/android/settings/headsup/HeadsUpSettings;->updateEnabledState()V
    invoke-static {v0}, Lcom/android/settings/headsup/HeadsUpSettings;->access$000(Lcom/android/settings/headsup/HeadsUpSettings;)V

    .line 83
    return-void
.end method
