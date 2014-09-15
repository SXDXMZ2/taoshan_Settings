.class public Lcom/android/settings/cyanogenmod/PowerMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v4, 0x7f05002f

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/PowerMenu;->addPreferencesFromResource(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 39
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "power_menu_expanded_desktop_enabled"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 42
    .local v0, expandedDesktopPref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "expanded_desktop_style"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 49
    :cond_0
    const-string v4, "power_menu_profiles_enabled"

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const-string v5, "system_profiles_enabled"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 52
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "power_menu_user_enabled"

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 56
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 49
    goto :goto_0
.end method
