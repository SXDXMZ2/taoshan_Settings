.class Lcom/android/settings/quicksettings/QuickSettingsTiles$2;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/quicksettings/QuickSettingsTiles;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;


# direct methods
.method constructor <init>(Lcom/android/settings/quicksettings/QuickSettingsTiles;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$2;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 218
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$2;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    #getter for: Lcom/android/settings/quicksettings/QuickSettingsTiles;->mDragView:Lcom/android/settings/quicksettings/DraggableGridView;
    invoke-static {v1}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->access$100(Lcom/android/settings/quicksettings/QuickSettingsTiles;)Lcom/android/settings/quicksettings/DraggableGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/quicksettings/DraggableGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$2;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    invoke-virtual {v1}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c017a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/quicksettings/QuickSettingsTiles$2;->this$0:Lcom/android/settings/quicksettings/QuickSettingsTiles;

    #getter for: Lcom/android/settings/quicksettings/QuickSettingsTiles;->mTileAdapter:Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter;
    invoke-static {v2}, Lcom/android/settings/quicksettings/QuickSettingsTiles;->access$200(Lcom/android/settings/quicksettings/QuickSettingsTiles;)Lcom/android/settings/quicksettings/QuickSettingsTiles$TileAdapter;

    move-result-object v2

    new-instance v3, Lcom/android/settings/quicksettings/QuickSettingsTiles$2$1;

    invoke-direct {v3, p0}, Lcom/android/settings/quicksettings/QuickSettingsTiles$2$1;-><init>(Lcom/android/settings/quicksettings/QuickSettingsTiles$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
