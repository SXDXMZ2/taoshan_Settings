.class Lcom/android/settings/cyanogenmod/StatusBar$1;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/StatusBar;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/StatusBar;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/StatusBar$1;->this$0:Lcom/android/settings/cyanogenmod/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/cyanogenmod/StatusBar$1;->onChange(ZLandroid/net/Uri;)V

    .line 109
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/StatusBar$1;->this$0:Lcom/android/settings/cyanogenmod/StatusBar;

    #calls: Lcom/android/settings/cyanogenmod/StatusBar;->refreshBrightnessControl()V
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/StatusBar;->access$000(Lcom/android/settings/cyanogenmod/StatusBar;)V

    .line 104
    return-void
.end method
