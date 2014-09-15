.class Lcom/android/settings/applications/ProtectedAppsActivity$1;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ProtectedAppsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ProtectedAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ProtectedAppsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    iget-object v5, p0, Lcom/android/settings/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    #getter for: Lcom/android/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-static {v5}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$000(Lcom/android/settings/applications/ProtectedAppsActivity;)Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;

    iget-object v0, v5, Lcom/android/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    .line 70
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, componentsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v5, p0, Lcom/android/settings/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    #getter for: Lcom/android/settings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/settings/applications/ProtectedAppsActivity;->access$100(Lcom/android/settings/applications/ProtectedAppsActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v6

    .line 76
    .local v3, state:Z
    :goto_0
    new-instance v2, Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;

    iget-object v5, p0, Lcom/android/settings/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    invoke-direct {v2, v5, v1, v3}, Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    .line 77
    .local v2, list:Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;
    new-instance v4, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    iget-object v5, p0, Lcom/android/settings/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    iget-object v8, p0, Lcom/android/settings/applications/ProtectedAppsActivity$1;->this$0:Lcom/android/settings/applications/ProtectedAppsActivity;

    invoke-direct {v4, v5, v8}, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lcom/android/settings/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    .line 79
    .local v4, task:Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    new-array v5, v7, [Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void

    .end local v2           #list:Lcom/android/settings/applications/ProtectedAppsActivity$AppProtectList;
    .end local v3           #state:Z
    .end local v4           #task:Lcom/android/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    :cond_0
    move v3, v7

    .line 72
    goto :goto_0
.end method
