.class public Lcom/android/settings/AutoSyncDialogFragment;
.super Landroid/app/DialogFragment;
.source "AutoSyncDialogFragment.java"


# instance fields
.field private mEnabling:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AutoSyncDialogFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/settings/AutoSyncDialogFragment;->mEnabling:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/AutoSyncDialogFragment;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AutoSyncDialogFragment;->finishPreferencePanel(ILandroid/content/Intent;)V

    return-void
.end method

.method private finishPreferencePanel(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/AutoSyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 90
    .local v0, activity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0, p0, p1, p2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/AutoSyncDialogFragment;->finishPreferencePanel(ILandroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/settings/AutoSyncDialogFragment;->setShowsDialog(Z)V

    .line 43
    if-eqz p1, :cond_0

    const-string v1, "enabling"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v0, "enabling"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AutoSyncDialogFragment;->mEnabling:Z

    .line 50
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AutoSyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/AutoSyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enabling"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/AutoSyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enabling"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AutoSyncDialogFragment;->mEnabling:Z

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/AutoSyncDialogFragment;->mEnabling:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AutoSyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/android/settings/AutoSyncDialogFragment;->mEnabling:Z

    if-nez v1, :cond_0

    .line 56
    const v1, 0x7f0b067a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 57
    const v1, 0x7f0b067b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 63
    :goto_0
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AutoSyncDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/AutoSyncDialogFragment$1;-><init>(Lcom/android/settings/AutoSyncDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/AutoSyncDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AutoSyncDialogFragment$2;-><init>(Lcom/android/settings/AutoSyncDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    const v1, 0x7f0b0678

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    const v1, 0x7f0b0679

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings/AutoSyncDialogFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    return-void
.end method
