.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

.field private mBatteryPulse:Landroid/preference/PreferenceScreen;

.field private mColorEnhancement:Landroid/preference/CheckBoxPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

.field private mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

.field private mExpandedDesktopPref:Landroid/preference/ListPreference;

.field private mFontSizePref:Lcom/android/settings/FontDialogPreference;

.field private mNotificationPulse:Landroid/preference/PreferenceScreen;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenAnimationStylePreference:Landroid/preference/ListPreference;

.field private mScreenColorSettings:Landroid/preference/PreferenceScreen;

.field private mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

.field private mTapToWake:Landroid/preference/CheckBoxPreference;

.field private mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 114
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 124
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 132
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/FontDialogPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    return-object v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "screenTimeoutPreference"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 392
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 393
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 427
    :goto_1
    return-void

    .line 392
    .end local v3           #maxTimeout:J
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 396
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 397
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 398
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 401
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 402
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 403
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 407
    .end local v7           #timeout:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 408
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 409
    .local v9, userPreference:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 413
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_6

    .line 414
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 426
    .end local v9           #userPreference:I
    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 415
    .restart local v9       #userPreference:I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v11, v11, v3

    if-nez v11, :cond_5

    .line 419
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 426
    .end local v9           #userPreference:I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private static isAdaptiveBacklightSupported()Z
    .locals 2

    .prologue
    .line 734
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 737
    :goto_0
    return v1

    .line 735
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isColorEnhancementSupported()Z
    .locals 2

    .prologue
    .line 752
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 755
    :goto_0
    return v1

    .line 753
    :catch_0
    move-exception v0

    .line 755
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPostProcessingSupported()Z
    .locals 5

    .prologue
    .line 722
    const/4 v2, 0x1

    .line 723
    .local v2, ret:Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 725
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.qualcomm.display"

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return v2

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isSunlightEnhancementSupported()Z
    .locals 2

    .prologue
    .line 743
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 746
    :goto_0
    return v1

    .line 744
    :catch_0
    move-exception v0

    .line 746
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTapToWakeSupported()Z
    .locals 2

    .prologue
    .line 761
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 764
    :goto_0
    return v1

    .line 762
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x1

    .line 677
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 678
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isAdaptiveBacklightSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    const-string v2, "adaptive_backlight"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 680
    .local v0, enabled:Z
    invoke-static {v0}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 681
    const-string v2, "DisplaySettings"

    const-string v3, "Failed to restore adaptive backlight settings."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v0           #enabled:Z
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isSunlightEnhancementSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 688
    const-string v2, "sunlight_enhancement"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 689
    .restart local v0       #enabled:Z
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 691
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->setEnabled(Z)Z

    .line 692
    const-string v2, "DisplaySettings"

    const-string v3, "SRE requires CABC, disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v0           #enabled:Z
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isColorEnhancementSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 703
    const-string v2, "color_enhancement"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 704
    .restart local v0       #enabled:Z
    invoke-static {v0}, Lorg/cyanogenmod/hardware/ColorEnhancement;->setEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 705
    const-string v2, "DisplaySettings"

    const-string v3, "Failed to restore color enhancement settings."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .end local v0           #enabled:Z
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isTapToWakeSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 712
    const-string v2, "double_tap_wake_gesture"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 713
    .restart local v0       #enabled:Z
    invoke-static {v0}, Lorg/cyanogenmod/hardware/TapToWake;->setEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_8

    .line 714
    const-string v2, "DisplaySettings"

    const-string v3, "Failed to restore tap-to-wake settings."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v0           #enabled:Z
    :cond_3
    :goto_3
    return-void

    .line 683
    .restart local v0       #enabled:Z
    :cond_4
    const-string v2, "DisplaySettings"

    const-string v3, "Adaptive backlight settings restored."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 694
    :cond_5
    invoke-static {v0}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->setEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 695
    const-string v2, "DisplaySettings"

    const-string v3, "Failed to restore SRE settings."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 697
    :cond_6
    const-string v2, "DisplaySettings"

    const-string v3, "SRE settings restored."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 707
    :cond_7
    const-string v2, "DisplaySettings"

    const-string v3, "Color enhancement settings restored."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 716
    :cond_8
    const-string v2, "DisplaySettings"

    const-string v3, "Tap-to-wake settings restored."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private updateBatteryPulseSummary()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 547
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 550
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080135

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080136

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateDisplayRotationPreferenceDescription()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    if-nez v6, :cond_0

    .line 360
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 324
    .local v3, rotationEnabled:Z
    :cond_1
    if-nez v3, :cond_2

    .line 325
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0801e5

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 329
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v5, summary:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation_angles"

    const/16 v8, 0xb

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 335
    .local v2, mode:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v4, rotationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    .line 338
    .local v0, delim:Ljava/lang/String;
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_3

    .line 339
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_3
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_4

    .line 342
    const-string v6, "90"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_4
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_5

    .line 345
    const-string v6, "180"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_5
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_6

    .line 348
    const-string v6, "270"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 351
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_7

    .line 353
    const-string v0, ", "

    .line 350
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    :cond_7
    const-string v0, " & "

    goto :goto_2

    .line 358
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0801e6

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateExpandedDesktop(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 769
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 770
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 771
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, -0x1

    .line 773
    .local v2, summary:I
    const-string v3, "expanded_desktop_style"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 775
    if-nez p1, :cond_2

    .line 777
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 778
    const-string v3, "expanded_desktop_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 779
    const v2, 0x7f08030e

    .line 788
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 789
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 791
    :cond_1
    return-void

    .line 780
    :cond_2
    if-ne p1, v4, :cond_3

    .line 781
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 782
    const v2, 0x7f08030f

    goto :goto_0

    .line 783
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 784
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 785
    const v2, 0x7f080310

    goto :goto_0
.end method

.method private updateLightPulseSummary()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080135

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080136

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateScreenAnimationStylePreferenceDescription(I)V
    .locals 5
    .parameter "currentAnimation"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    .line 432
    .local v1, preference:Landroid/preference/ListPreference;
    if-gez p1, :cond_0

    .line 434
    const-string v2, ""

    .line 444
    .local v2, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    return-void

    .line 436
    .end local v2           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 437
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 438
    .local v3, values:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    array-length v4, v0

    if-nez v4, :cond_2

    .line 439
    :cond_1
    const-string v2, ""

    .restart local v2       #summary:Ljava/lang/String;
    goto :goto_0

    .line 441
    .end local v2           #summary:Ljava/lang/String;
    :cond_2
    aget-object v4, v0, p1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #summary:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/Preference;)V

    .line 523
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 524
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLightPulseSummary()V

    .line 525
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateBatteryPulseSummary()V

    .line 526
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .parameter "currentTimeout"

    .prologue
    .line 363
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 365
    .local v3, preference:Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 367
    const-string v4, ""

    .line 385
    .local v4, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    return-void

    .line 369
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 370
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 371
    .local v7, values:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 372
    :cond_1
    const-string v4, ""

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0

    .line 374
    .end local v4           #summary:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 375
    .local v0, best:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_4

    .line 376
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 377
    .local v5, timeout:J
    cmp-long v8, p1, v5

    if-ltz v8, :cond_3

    .line 378
    move v0, v2

    .line 375
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 381
    .end local v5           #timeout:J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0806f2

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 142
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 144
    .local v20, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 146
    .local v19, res:Landroid/content/res/Resources;
    const v21, 0x7f05001c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 148
    const-string v21, "display_prefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 149
    .local v8, displayPrefs:Landroid/preference/PreferenceCategory;
    const-string v21, "expanded_desktop_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    .line 153
    .local v10, expandedCategory:Landroid/preference/PreferenceCategory;
    const-string v21, "expanded_desktop"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/ListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    .line 154
    const-string v21, "expanded_desktop_no_navbar"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "expanded_desktop_style"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 163
    .local v11, expandedDesktopValue:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "dev_force_show_navbar"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    const/4 v12, 0x1

    .line 165
    .local v12, forceNavbar:Z
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v21

    if-nez v21, :cond_0

    if-eqz v12, :cond_f

    :cond_0
    const/4 v14, 0x1

    .line 168
    .local v14, hasNavBar:Z
    :goto_1
    if-eqz v14, :cond_10

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/DisplaySettings;->updateExpandedDesktop(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v12           #forceNavbar:Z
    .end local v14           #hasNavBar:Z
    :goto_2
    const-string v21, "display_rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    .line 185
    const-string v21, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1110053

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-nez v21, :cond_1

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_1
    const-string v21, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/ListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 193
    const-string v21, "screen_off_timeout"

    const-wide/16 v22, 0x7530

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 195
    .local v6, currentTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 198
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 201
    const-string v21, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings/FontDialogPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/FontDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/FontDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    const-string v21, "advanced_display_prefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 207
    .local v2, advancedPrefs:Landroid/preference/PreferenceCategory;
    const-string v21, "adaptive_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    .line 208
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isAdaptiveBacklightSupported()Z

    move-result v21

    if-nez v21, :cond_2

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    .line 213
    :cond_2
    const-string v21, "sunlight_enhancement"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

    .line 214
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isSunlightEnhancementSupported()Z

    move-result v21

    if-nez v21, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

    .line 219
    :cond_3
    const-string v21, "color_enhancement"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    .line 220
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isColorEnhancementSupported()Z

    move-result v21

    if-nez v21, :cond_4

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    .line 225
    :cond_4
    const-string v21, "double_tap_wake_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    .line 226
    invoke-static {}, Lcom/android/settings/DisplaySettings;->isTapToWakeSupported()Z

    move-result v21

    if-nez v21, :cond_5

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    .line 231
    :cond_5
    const v21, 0x1110077

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    .line 233
    .local v17, proximityCheckOnWait:Z
    if-nez v17, :cond_6

    .line 234
    const-string v21, "proximity_on_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "proximity_on_wake"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string v22, "advanced_display_settings"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 241
    const-string v21, "wake_when_plugged_or_unplugged"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    .line 244
    invoke-static {}, Lcom/android/settings/hardware/DisplayColor;->isSupported()Z

    move-result v21

    if-nez v21, :cond_7

    .line 245
    const-string v21, "color_calibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_7
    invoke-static {}, Lcom/android/settings/hardware/DisplayGamma;->isSupported()Z

    move-result v21

    if-nez v21, :cond_8

    .line 248
    const-string v21, "gamma_tuning"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    :cond_8
    const-string v21, "screencolor_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->isPostProcessingSupported()Z

    move-result v21

    if-nez v21, :cond_9

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenColorSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    :cond_9
    const v21, 0x1110066

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 258
    .local v3, allowsScreenOffAnimation:Z
    const v21, 0x111001f

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 260
    .local v18, requiresFadeAnimation:Z
    const-string v21, "screen_off_animation"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

    .line 262
    const-string v21, "screen_animation_style"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/ListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    .line 265
    if-eqz v3, :cond_15

    .line 266
    if-nez v18, :cond_14

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    const-string v21, "screen_off_animation"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_12

    const/4 v4, 0x1

    .line 271
    .local v4, animationEnabled:Z
    :goto_3
    const-string v21, "screen_animation_style"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 274
    .local v5, currentAnimation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    if-eqz v4, :cond_13

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 277
    add-int/lit8 v21, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->updateScreenAnimationStylePreferenceDescription(I)V

    .line 289
    .end local v4           #animationEnabled:Z
    .end local v5           #currentAnimation:I
    :goto_4
    const v21, 0x111002b

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 291
    .local v15, hasNotificationLed:Z
    const v21, 0x111002c

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 293
    .local v13, hasBatteryLed:Z
    const-string v21, "lights_prefs"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 295
    .local v16, lightPrefs:Landroid/preference/PreferenceCategory;
    if-nez v15, :cond_a

    if-eqz v13, :cond_16

    .line 296
    :cond_a
    const-string v21, "battery_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    .line 297
    const-string v21, "notification_pulse"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    .line 300
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    if-nez v21, :cond_b

    if-nez v13, :cond_c

    .line 301
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    .line 305
    :cond_c
    if-nez v15, :cond_d

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    .line 312
    :cond_d
    :goto_5
    return-void

    .line 163
    .end local v2           #advancedPrefs:Landroid/preference/PreferenceCategory;
    .end local v3           #allowsScreenOffAnimation:Z
    .end local v6           #currentTimeout:J
    .end local v13           #hasBatteryLed:Z
    .end local v15           #hasNotificationLed:Z
    .end local v16           #lightPrefs:Landroid/preference/PreferenceCategory;
    .end local v17           #proximityCheckOnWait:Z
    .end local v18           #requiresFadeAnimation:Z
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 165
    .restart local v12       #forceNavbar:Z
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 175
    .restart local v14       #hasNavBar:Z
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v22, v0

    if-lez v11, :cond_11

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 179
    .end local v12           #forceNavbar:Z
    .end local v14           #hasNavBar:Z
    :catch_0
    move-exception v9

    .line 180
    .local v9, e:Landroid/os/RemoteException;
    const-string v21, "DisplaySettings"

    const-string v22, "Error getting navigation bar status"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 176
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v12       #forceNavbar:Z
    .restart local v14       #hasNavBar:Z
    :cond_11
    const/16 v21, 0x0

    goto :goto_6

    .line 268
    .end local v12           #forceNavbar:Z
    .end local v14           #hasNavBar:Z
    .restart local v2       #advancedPrefs:Landroid/preference/PreferenceCategory;
    .restart local v3       #allowsScreenOffAnimation:Z
    .restart local v6       #currentTimeout:J
    .restart local v17       #proximityCheckOnWait:Z
    .restart local v18       #requiresFadeAnimation:Z
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 279
    .restart local v4       #animationEnabled:Z
    .restart local v5       #currentAnimation:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 280
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->updateScreenAnimationStylePreferenceDescription(I)V

    goto/16 :goto_4

    .line 283
    .end local v4           #animationEnabled:Z
    .end local v5           #currentAnimation:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 286
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenAnimationStylePreference:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 310
    .restart local v13       #hasBatteryLed:Z
    .restart local v15       #hasNotificationLed:Z
    .restart local v16       #lightPrefs:Landroid/preference/PreferenceCategory;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 509
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080b9b

    new-instance v2, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 518
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 498
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 505
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 610
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, key:Ljava/lang/String;
    const-string v4, "expanded_desktop"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p2

    .line 612
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 613
    .local v1, expandedDesktopValue:I
    invoke-direct {p0, v1}, Lcom/android/settings/DisplaySettings;->updateExpandedDesktop(I)V

    .line 615
    .end local v1           #expandedDesktopValue:I
    :cond_0
    const-string v4, "expanded_desktop_no_navbar"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 616
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 617
    .local v3, value:Z
    if-eqz v3, :cond_5

    const/4 v4, 0x2

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/settings/DisplaySettings;->updateExpandedDesktop(I)V

    .line 620
    .end local v3           #value:Z
    :cond_1
    const-string v4, "screen_timeout"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p2

    .line 621
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 623
    .local v3, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v3           #value:I
    :cond_2
    :goto_1
    const-string v4, "font_size"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 630
    invoke-virtual {p0, p2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 632
    :cond_3
    const-string v4, "screen_animation_style"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 633
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 635
    .restart local v3       #value:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 637
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_animation"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 639
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settings/DisplaySettings;->updateScreenAnimationStylePreferenceDescription(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 656
    .end local v3           #value:I
    :cond_4
    :goto_2
    return v7

    .local v3, value:Z
    .restart local p2
    :cond_5
    move v4, v5

    .line 617
    goto :goto_0

    .line 625
    .local v3, value:I
    :catch_0
    move-exception v0

    .line 626
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "DisplaySettings"

    const-string v5, "could not persist screen timeout setting"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 642
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local p2
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_animation"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_animation_style"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v4}, Lcom/android/settings/DisplaySettings;->updateScreenAnimationStylePreferenceDescription(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 651
    :catch_1
    move-exception v0

    .line 652
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v4, "DisplaySettings"

    const-string v5, "could not persist screen animation style setting"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 661
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    if-ne p1, v1, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    .line 669
    :goto_0
    return v0

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontDialogPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontDialogPreference;->click()V

    .line 669
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 584
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result v2

    .line 605
    :goto_0
    return v2

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 591
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->setEnabled(Z)Z

    move-result v2

    goto :goto_0

    .line 592
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 593
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lorg/cyanogenmod/hardware/ColorEnhancement;->setEnabled(Z)Z

    move-result v2

    goto :goto_0

    .line 594
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wake_when_plugged_or_unplugged"

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 599
    :cond_5
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 602
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "double_tap_wake_gesture"

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 603
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Lorg/cyanogenmod/hardware/TapToWake;->setEnabled(Z)Z

    move-result v2

    goto :goto_0

    .line 605
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 449
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 450
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v3, v6}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 458
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "accelerometer_rotation"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 462
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAdaptiveBacklight:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 466
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 467
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 469
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 475
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 476
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mColorEnhancement:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 479
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 482
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mTapToWake:Landroid/preference/CheckBoxPreference;

    const-string v6, "double_tap_wake_gesture"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x111001e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 489
    .local v2, wakeUpWhenPluggedOrUnpluggedConfig:Z
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/CheckBoxPreference;

    const-string v7, "wake_when_plugged_or_unplugged"

    if-eqz v2, :cond_5

    move v3, v4

    :goto_1
    invoke-static {v1, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_6

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 493
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 494
    return-void

    .line 471
    .end local v2           #wakeUpWhenPluggedOrUnpluggedConfig:Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mSunlightEnhancement:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .restart local v2       #wakeUpWhenPluggedOrUnpluggedConfig:Z
    :cond_5
    move v3, v5

    .line 489
    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_2
.end method

.method public readFontSizePreference(Landroid/preference/Preference;)V
    .locals 6
    .parameter "pref"

    .prologue
    .line 562
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 569
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v3}, Lcom/android/settings/FontDialogPreference;->getFontSizeDescription(Landroid/content/res/Resources;F)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, fontDesc:Ljava/lang/String;
    const v3, 0x7f080701

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    return-void

    .line 563
    .end local v1           #fontDesc:Ljava/lang/String;
    .end local v2           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DisplaySettings"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 576
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
