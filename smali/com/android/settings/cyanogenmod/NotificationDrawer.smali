.class public Lcom/android/settings/cyanogenmod/NotificationDrawer;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationDrawer.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCollapseOnDismiss:Landroid/preference/ListPreference;

.field private mHeadsUp:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateCollapseBehaviourSummary(I)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NotificationDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, summaries:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f05002c

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/NotificationDrawer;->addPreferencesFromResource(I)V

    .line 44
    const-string v1, "heads_up_enabled"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/NotificationDrawer;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/NotificationDrawer;->mHeadsUp:Landroid/preference/Preference;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NotificationDrawer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_collapse_on_dismiss"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, collapseBehaviour:I
    const-string v1, "notification_drawer_collapse_on_dismiss"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/NotificationDrawer;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    .line 51
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/NotificationDrawer;->updateCollapseBehaviourSummary(I)V

    .line 54
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 68
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    .local v0, value:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NotificationDrawer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_collapse_on_dismiss"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/NotificationDrawer;->updateCollapseBehaviourSummary(I)V

    .line 72
    const/4 v1, 0x1

    .line 75
    .end local v0           #value:I
    :goto_0
    return v1

    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NotificationDrawer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "heads_up_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 62
    .local v0, headsUpEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/NotificationDrawer;->mHeadsUp:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    const v1, 0x7f080182

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 64
    return-void

    .end local v0           #headsUpEnabled:Z
    :cond_0
    move v0, v1

    .line 60
    goto :goto_0

    .line 62
    .restart local v0       #headsUpEnabled:Z
    :cond_1
    const v1, 0x7f080183

    goto :goto_1
.end method
