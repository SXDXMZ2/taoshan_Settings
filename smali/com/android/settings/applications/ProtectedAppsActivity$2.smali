.class Lcom/android/settings/applications/ProtectedAppsActivity$2;
.super Landroid/os/AsyncTask;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ProtectedAppsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ProtectedAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ProtectedAppsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProtectedAppsActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    #calls: Lcom/android/settings/applications/ProtectedAppsActivity;->refreshApps()Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$300(Lcom/android/settings/applications/ProtectedAppsActivity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProtectedAppsActivity$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;>;"
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    #getter for: Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-static {v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$000(Lcom/android/settings/applications/ProtectedAppsActivity;)Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->clear()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    #getter for: Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-static {v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$000(Lcom/android/settings/applications/ProtectedAppsActivity;)Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->addAll(Ljava/util/Collection;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    #calls: Lcom/android/settings/applications/ProtectedAppsActivity;->restoreCheckedItems()V
    invoke-static {v0}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$200(Lcom/android/settings/applications/ProtectedAppsActivity;)V

    .line 101
    return-void
.end method
