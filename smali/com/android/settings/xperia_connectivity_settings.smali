.class public Lcom/android/settings/xperia_connectivity_settings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Maddy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f050067

    invoke-virtual {p0, v0}, Lcom/android/settings/xperia_connectivity_settings;->addPreferencesFromResource(I)V

    .line 24
    return-void
.end method
