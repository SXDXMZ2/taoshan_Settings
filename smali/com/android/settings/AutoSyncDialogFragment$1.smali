.class Lcom/android/settings/AutoSyncDialogFragment$1;
.super Ljava/lang/Object;
.source "AutoSyncDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AutoSyncDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoSyncDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoSyncDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/AutoSyncDialogFragment$1;->this$0:Lcom/android/settings/AutoSyncDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/settings/AutoSyncDialogFragment$1;->this$0:Lcom/android/settings/AutoSyncDialogFragment;

    #getter for: Lcom/android/settings/AutoSyncDialogFragment;->mEnabling:Z
    invoke-static {v1}, Lcom/android/settings/AutoSyncDialogFragment;->access$000(Lcom/android/settings/AutoSyncDialogFragment;)Z

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, resultData:Landroid/content/Intent;
    const-string v1, "enabling"

    iget-object v2, p0, Lcom/android/settings/AutoSyncDialogFragment$1;->this$0:Lcom/android/settings/AutoSyncDialogFragment;

    #getter for: Lcom/android/settings/AutoSyncDialogFragment;->mEnabling:Z
    invoke-static {v2}, Lcom/android/settings/AutoSyncDialogFragment;->access$000(Lcom/android/settings/AutoSyncDialogFragment;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/android/settings/AutoSyncDialogFragment$1;->this$0:Lcom/android/settings/AutoSyncDialogFragment;

    const/4 v2, -0x1

    #calls: Lcom/android/settings/AutoSyncDialogFragment;->finishPreferencePanel(ILandroid/content/Intent;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/AutoSyncDialogFragment;->access$100(Lcom/android/settings/AutoSyncDialogFragment;ILandroid/content/Intent;)V

    .line 70
    return-void
.end method
