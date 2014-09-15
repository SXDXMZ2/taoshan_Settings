.class public Lcom/android/settings/cyanogenmod/SystemSettingListPreference;
.super Landroid/preference/ListPreference;
.source "SystemSettingListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettingListPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettingListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected isPersisted()Z
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettingListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettingListPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettingListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 44
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettingListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
