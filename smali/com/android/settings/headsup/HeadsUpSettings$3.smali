.class Lcom/android/settings/headsup/HeadsUpSettings$3;
.super Ljava/lang/Object;
.source "HeadsUpSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/headsup/HeadsUpSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/headsup/HeadsUpSettings;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/settings/headsup/HeadsUpSettings;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/headsup/HeadsUpSettings$3;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    iput-object p2, p0, Lcom/android/settings/headsup/HeadsUpSettings$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 220
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/PackageListAdapter$PackageItem;

    .line 221
    .local v0, info:Lcom/android/settings/cyanogenmod/PackageListAdapter$PackageItem;
    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings$3;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    iget-object v2, v0, Lcom/android/settings/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings$3;->this$0:Lcom/android/settings/headsup/HeadsUpSettings;

    #getter for: Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPackages:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/settings/headsup/HeadsUpSettings;->access$300(Lcom/android/settings/headsup/HeadsUpSettings;)Ljava/util/Map;

    move-result-object v3

    #calls: Lcom/android/settings/headsup/HeadsUpSettings;->addCustomApplicationPref(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/headsup/HeadsUpSettings;->access$200(Lcom/android/settings/headsup/HeadsUpSettings;Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 223
    return-void
.end method
