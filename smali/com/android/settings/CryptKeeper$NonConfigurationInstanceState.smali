.class Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
.super Ljava/lang/Object;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonConfigurationInstanceState"
.end annotation


# instance fields
.field final statusbar:Landroid/app/StatusBarManager;

.field final wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;Landroid/app/StatusBarManager;)V
    .locals 0
    .parameter "_wakelock"
    .parameter "_statusbar"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 130
    iput-object p2, p0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->statusbar:Landroid/app/StatusBarManager;

    .line 131
    return-void
.end method
