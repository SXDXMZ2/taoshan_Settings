.class Lcom/android/settings/AutoSyncDialogFragment$2;
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
    .line 72
    iput-object p1, p0, Lcom/android/settings/AutoSyncDialogFragment$2;->this$0:Lcom/android/settings/AutoSyncDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/AutoSyncDialogFragment$2;->this$0:Lcom/android/settings/AutoSyncDialogFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    #calls: Lcom/android/settings/AutoSyncDialogFragment;->finishPreferencePanel(ILandroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/AutoSyncDialogFragment;->access$100(Lcom/android/settings/AutoSyncDialogFragment;ILandroid/content/Intent;)V

    .line 76
    return-void
.end method
