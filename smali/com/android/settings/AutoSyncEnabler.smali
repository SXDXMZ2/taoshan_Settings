.class public final Lcom/android/settings/AutoSyncEnabler;
.super Ljava/lang/Object;
.source "AutoSyncEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSwitch:Landroid/widget/Switch;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .parameter "context"
    .parameter "autoSyncSwitch"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/settings/AutoSyncEnabler;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    .line 48
    return-void
.end method

.method private setChecked(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 72
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v2, args:Landroid/os/Bundle;
    const-string v0, "enabling"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-string v1, "com.android.settings.AutoSyncDialogFragment"

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 79
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    .line 59
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/AutoSyncEnabler;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    .line 54
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .parameter "autoSyncSwitch"

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iput-object p1, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    .line 65
    iget-object v1, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/AutoSyncEnabler;->mValidListener:Z

    if-eqz v2, :cond_1

    move-object v0, p0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/AutoSyncEnabler;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/AutoSyncEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
