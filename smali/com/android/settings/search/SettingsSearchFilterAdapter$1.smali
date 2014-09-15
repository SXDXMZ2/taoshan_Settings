.class Lcom/android/settings/search/SettingsSearchFilterAdapter$1;
.super Landroid/os/ResultReceiver;
.source "SettingsSearchFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SettingsSearchFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SettingsSearchFilterAdapter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$1;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 61
    new-instance v0, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$1;->this$0:Lcom/android/settings/search/SettingsSearchFilterAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;-><init>(Lcom/android/settings/search/SettingsSearchFilterAdapter;Lcom/android/settings/search/SettingsSearchFilterAdapter$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingsSearchFilterAdapter$LoadSearchInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method
