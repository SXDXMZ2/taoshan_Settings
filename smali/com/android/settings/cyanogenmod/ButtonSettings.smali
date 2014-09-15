.class public Lcom/android/settings/cyanogenmod/ButtonSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ButtonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppSwitchLongPressAction:Landroid/preference/ListPreference;

.field private mAppSwitchPressAction:Landroid/preference/ListPreference;

.field private mAssistLongPressAction:Landroid/preference/ListPreference;

.field private mAssistPressAction:Landroid/preference/ListPreference;

.field private mCameraMusicControls:Landroid/preference/CheckBoxPreference;

.field private mCameraSleepOnRelease:Landroid/preference/CheckBoxPreference;

.field private mCameraWake:Landroid/preference/CheckBoxPreference;

.field private mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHomeAnswerCall:Landroid/preference/CheckBoxPreference;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;

.field private mNavigationBarLeftPref:Landroid/preference/CheckBoxPreference;

.field private mPowerEndCall:Landroid/preference/CheckBoxPreference;

.field private mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

.field private mVolumeKeyCursorControl:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/ButtonSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "pref"
    .parameter "newValue"
    .parameter "setting"

    .prologue
    .line 382
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 383
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 385
    .local v0, index:I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    return-void
.end method

.method private handleToggleHomeButtonAnswersCallPreferenceClick()V
    .locals 3

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ring_home_button_behavior"

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeAnswerCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 569
    return-void

    .line 565
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mPowerEndCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 375
    .local v0, list:Landroid/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 378
    return-object v0
.end method

.method private static isKeyDisablerSupported()Z
    .locals 2

    .prologue
    .line 550
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 553
    :goto_0
    return v1

    .line 551
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restoreKeyDisabler(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 505
    invoke-static {}, Lcom/android/settings/cyanogenmod/ButtonSettings;->isKeyDisablerSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dev_force_show_navbar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {p0, v0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private updateDisableNavkeysOption()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dev_force_show_navbar"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    move v3, v7

    .line 467
    .local v3, enabled:Z
    :goto_0
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 472
    .local v6, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v9, "home_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 474
    .local v4, homeCategory:Landroid/preference/PreferenceCategory;
    const-string v9, "menu_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 476
    .local v5, menuCategory:Landroid/preference/PreferenceCategory;
    const-string v9, "assist_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 478
    .local v1, assistCategory:Landroid/preference/PreferenceCategory;
    const-string v9, "app_switch_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 480
    .local v0, appSwitchCategory:Landroid/preference/PreferenceCategory;
    const-string v9, "button_backlight"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;

    .line 485
    .local v2, backlight:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
    if-eqz v2, :cond_0

    .line 486
    if-nez v3, :cond_6

    move v9, v7

    :goto_1
    invoke-virtual {v2, v9}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->setEnabled(Z)V

    .line 490
    :cond_0
    if-eqz v4, :cond_1

    .line 491
    if-nez v3, :cond_7

    move v9, v7

    :goto_2
    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 493
    :cond_1
    if-eqz v5, :cond_2

    .line 494
    if-nez v3, :cond_8

    move v9, v7

    :goto_3
    invoke-virtual {v5, v9}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 496
    :cond_2
    if-eqz v1, :cond_3

    .line 497
    if-nez v3, :cond_9

    move v9, v7

    :goto_4
    invoke-virtual {v1, v9}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 499
    :cond_3
    if-eqz v0, :cond_4

    .line 500
    if-nez v3, :cond_a

    :goto_5
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 502
    :cond_4
    return-void

    .end local v0           #appSwitchCategory:Landroid/preference/PreferenceCategory;
    .end local v1           #assistCategory:Landroid/preference/PreferenceCategory;
    .end local v2           #backlight:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
    .end local v3           #enabled:Z
    .end local v4           #homeCategory:Landroid/preference/PreferenceCategory;
    .end local v5           #menuCategory:Landroid/preference/PreferenceCategory;
    .end local v6           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_5
    move v3, v8

    .line 464
    goto :goto_0

    .restart local v0       #appSwitchCategory:Landroid/preference/PreferenceCategory;
    .restart local v1       #assistCategory:Landroid/preference/PreferenceCategory;
    .restart local v2       #backlight:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
    .restart local v3       #enabled:Z
    .restart local v4       #homeCategory:Landroid/preference/PreferenceCategory;
    .restart local v5       #menuCategory:Landroid/preference/PreferenceCategory;
    .restart local v6       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_6
    move v9, v8

    .line 486
    goto :goto_1

    :cond_7
    move v9, v8

    .line 491
    goto :goto_2

    :cond_8
    move v9, v8

    .line 494
    goto :goto_3

    :cond_9
    move v9, v8

    .line 497
    goto :goto_4

    :cond_a
    move v7, v8

    .line 500
    goto :goto_5
.end method

.method private static writeDisableNavkeysOption(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 433
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 434
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x10e002e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 437
    .local v1, defaultBrightness:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dev_force_show_navbar"

    if-eqz p1, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    invoke-static {p1}, Lorg/cyanogenmod/hardware/KeyDisabler;->setActive(Z)Z

    .line 442
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 444
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_3

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "button_brightness"

    invoke-static {v5, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 447
    .local v0, currentBrightness:I
    const-string v5, "pre_navbar_button_backlight"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 448
    const-string v5, "pre_navbar_button_backlight"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 450
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "button_brightness"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    .end local v0           #currentBrightness:I
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 461
    return-void

    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v5, v6

    .line 437
    goto :goto_0

    .line 453
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v5, "pre_navbar_button_backlight"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 454
    .local v3, oldBright:I
    if-eq v3, v9, :cond_1

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "button_brightness"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 457
    const-string v5, "pre_navbar_button_backlight"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 39
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v36, 0x7f05000f

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->addPreferencesFromResource(I)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 125
    .local v30, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    .line 126
    .local v31, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v28

    .line 128
    .local v28, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x10e004e

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 131
    .local v10, deviceKeys:I
    const/16 v36, 0x1a

    invoke-static/range {v36 .. v36}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v21

    .line 132
    .local v21, hasPowerKey:Z
    and-int/lit8 v36, v10, 0x1

    if-eqz v36, :cond_c

    const/16 v18, 0x1

    .line 133
    .local v18, hasHomeKey:Z
    :goto_0
    and-int/lit8 v36, v10, 0x4

    if-eqz v36, :cond_d

    const/16 v19, 0x1

    .line 134
    .local v19, hasMenuKey:Z
    :goto_1
    and-int/lit8 v36, v10, 0x8

    if-eqz v36, :cond_e

    const/16 v16, 0x1

    .line 135
    .local v16, hasAssistKey:Z
    :goto_2
    and-int/lit8 v36, v10, 0x10

    if-eqz v36, :cond_f

    const/4 v15, 0x1

    .line 136
    .local v15, hasAppSwitchKey:Z
    :goto_3
    and-int/lit8 v36, v10, 0x20

    if-eqz v36, :cond_10

    const/16 v17, 0x1

    .line 138
    .local v17, hasCameraKey:Z
    :goto_4
    const/4 v14, 0x0

    .line 139
    .local v14, hasAnyBindableKey:Z
    const-string v36, "power_key"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceCategory;

    .line 141
    .local v27, powerCategory:Landroid/preference/PreferenceCategory;
    const-string v36, "home_key"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceCategory;

    .line 143
    .local v22, homeCategory:Landroid/preference/PreferenceCategory;
    const-string v36, "menu_key"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceCategory;

    .line 145
    .local v24, menuCategory:Landroid/preference/PreferenceCategory;
    const-string v36, "assist_key"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 147
    .local v4, assistCategory:Landroid/preference/PreferenceCategory;
    const-string v36, "app_switch_key"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 149
    .local v3, appSwitchCategory:Landroid/preference/PreferenceCategory;
    const-string v36, "camera_key"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 151
    .local v6, cameraCategory:Landroid/preference/PreferenceCategory;
    const-string v36, "volume_keys"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v34

    check-cast v34, Landroid/preference/PreferenceCategory;

    .line 155
    .local v34, volumeCategory:Landroid/preference/PreferenceCategory;
    const-string v36, "power_end_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mPowerEndCall:Landroid/preference/CheckBoxPreference;

    .line 158
    const-string v36, "home_answer_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeAnswerCall:Landroid/preference/CheckBoxPreference;

    .line 160
    new-instance v36, Landroid/os/Handler;

    invoke-direct/range {v36 .. v36}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHandler:Landroid/os/Handler;

    .line 163
    const-string v36, "disable_nav_keys"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v36, "navigation_bar_left"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mNavigationBarLeftPref:Landroid/preference/CheckBoxPreference;

    .line 170
    const/16 v26, 0x0

    .line 171
    .local v26, needsNavigationBar:Z
    invoke-static {}, Lcom/android/settings/cyanogenmod/ButtonSettings;->isKeyDisablerSupported()Z

    move-result v36

    if-eqz v36, :cond_12

    .line 173
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v35

    .line 174
    .local v35, wm:Landroid/view/IWindowManager;
    invoke-interface/range {v35 .. v35}, Landroid/view/IWindowManager;->needsNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v26

    .line 178
    .end local v35           #wm:Landroid/view/IWindowManager;
    :goto_5
    if-eqz v26, :cond_11

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    :goto_6
    if-eqz v21, :cond_13

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mPowerEndCall:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mPowerEndCall:Landroid/preference/CheckBoxPreference;

    .line 197
    :cond_0
    :goto_7
    if-eqz v18, :cond_14

    .line 198
    const v36, 0x7f0a000a

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v36

    if-nez v36, :cond_1

    .line 199
    const-string v36, "home_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeAnswerCall:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeAnswerCall:Landroid/preference/CheckBoxPreference;

    .line 207
    :cond_2
    const v36, 0x10e0028

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 209
    .local v9, defaultLongPressAction:I
    if-ltz v9, :cond_3

    const/16 v36, 0x5

    move/from16 v0, v36

    if-le v9, v0, :cond_4

    .line 211
    :cond_3
    const/4 v9, 0x0

    .line 214
    :cond_4
    const v36, 0x10e0029

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 216
    .local v8, defaultDoubleTapAction:I
    if-ltz v8, :cond_5

    const/16 v36, 0x5

    move/from16 v0, v36

    if-le v8, v0, :cond_6

    .line 218
    :cond_5
    const/4 v8, 0x0

    .line 221
    :cond_6
    const-string v36, "key_home_long_press_action"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 224
    .local v23, longPressAction:I
    const-string v36, "hardware_keys_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 226
    const-string v36, "key_home_double_tap_action"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 229
    .local v11, doubleTapAction:I
    const-string v36, "hardware_keys_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v11}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 231
    const/4 v14, 0x1

    .line 236
    .end local v8           #defaultDoubleTapAction:I
    .end local v9           #defaultLongPressAction:I
    .end local v11           #doubleTapAction:I
    .end local v23           #longPressAction:I
    :goto_8
    if-eqz v19, :cond_16

    .line 237
    const-string v36, "key_menu_action"

    const/16 v37, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 239
    .local v29, pressAction:I
    const-string v36, "hardware_keys_menu_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 241
    const-string v37, "key_menu_long_press_action"

    if-eqz v16, :cond_15

    const/16 v36, 0x0

    :goto_9
    move-object/from16 v0, v31

    move-object/from16 v1, v37

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 244
    .restart local v23       #longPressAction:I
    const-string v36, "hardware_keys_menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 246
    const/4 v14, 0x1

    .line 251
    .end local v23           #longPressAction:I
    .end local v29           #pressAction:I
    :goto_a
    if-eqz v16, :cond_17

    .line 252
    const-string v36, "key_assist_action"

    const/16 v37, 0x3

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 254
    .restart local v29       #pressAction:I
    const-string v36, "hardware_keys_assist_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 256
    const-string v36, "key_assist_long_press_action"

    const/16 v37, 0x4

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 258
    .restart local v23       #longPressAction:I
    const-string v36, "hardware_keys_assist_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 260
    const/4 v14, 0x1

    .line 265
    .end local v23           #longPressAction:I
    .end local v29           #pressAction:I
    :goto_b
    if-eqz v15, :cond_18

    .line 266
    const-string v36, "key_app_switch_action"

    const/16 v37, 0x2

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 268
    .restart local v29       #pressAction:I
    const-string v36, "hardware_keys_app_switch_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 270
    const-string v36, "key_app_switch_long_press_action"

    const/16 v37, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 272
    .restart local v23       #longPressAction:I
    const-string v36, "hardware_keys_app_switch_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 274
    const/4 v14, 0x1

    .line 279
    .end local v23           #longPressAction:I
    .end local v29           #pressAction:I
    :goto_c
    if-eqz v17, :cond_1a

    .line 280
    const-string v36, "camera_wake_screen"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraWake:Landroid/preference/CheckBoxPreference;

    .line 282
    const-string v36, "camera_sleep_on_release"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/CheckBoxPreference;

    .line 284
    const-string v36, "camera_music_controls"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraMusicControls:Landroid/preference/CheckBoxPreference;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraWake:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v33

    .line 287
    .local v33, value:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraMusicControls:Landroid/preference/CheckBoxPreference;

    move-object/from16 v37, v0

    if-nez v33, :cond_19

    const/16 v36, 0x1

    :goto_d
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x111006f

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    .end local v33           #value:Z
    :cond_7
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_1c

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "swap_volume_keys_on_rotation"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 300
    .local v32, swapVolumeKeys:I
    const-string v36, "swap_volume_buttons"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    move-object/from16 v37, v0

    if-lez v32, :cond_1b

    const/16 v36, 0x1

    :goto_f
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    const-string v36, "volume_key_cursor_control"

    const/16 v37, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 306
    .local v7, cursorControlAction:I
    const-string v36, "volume_key_cursor_control"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1, v7}, Lcom/android/settings/cyanogenmod/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/cyanogenmod/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 309
    const v36, 0x7f0a000c

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v36

    if-nez v36, :cond_8

    .line 310
    const-string v36, "volume_wake_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    .end local v7           #cursorControlAction:I
    .end local v32           #swapVolumeKeys:I
    :cond_8
    :goto_10
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "dev_force_show_navbar"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1d

    const/4 v13, 0x1

    .line 321
    .local v13, forceNavbar:Z
    :goto_11
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v36

    if-nez v36, :cond_9

    if-eqz v13, :cond_1e

    :cond_9
    const/16 v20, 0x1

    .line 324
    .local v20, hasNavBar:Z
    :goto_12
    if-eqz v20, :cond_1f

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v36

    if-nez v36, :cond_a

    .line 326
    const-string v36, "navigation_bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceCategory;

    .line 328
    .local v25, navCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mNavigationBarLeftPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    .end local v13           #forceNavbar:Z
    .end local v20           #hasNavBar:Z
    .end local v25           #navCategory:Landroid/preference/PreferenceCategory;
    :cond_a
    :goto_13
    const-string v36, "button_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;

    .line 340
    .local v5, backlight:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported()Z

    move-result v36

    if-nez v36, :cond_b

    invoke-virtual {v5}, Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported()Z

    move-result v36

    if-nez v36, :cond_b

    .line 341
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 344
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v37

    const-string v38, "bluetooth_input_settings"

    invoke-static/range {v36 .. v38}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 346
    return-void

    .line 132
    .end local v3           #appSwitchCategory:Landroid/preference/PreferenceCategory;
    .end local v4           #assistCategory:Landroid/preference/PreferenceCategory;
    .end local v5           #backlight:Lcom/android/settings/cyanogenmod/ButtonBacklightBrightness;
    .end local v6           #cameraCategory:Landroid/preference/PreferenceCategory;
    .end local v14           #hasAnyBindableKey:Z
    .end local v15           #hasAppSwitchKey:Z
    .end local v16           #hasAssistKey:Z
    .end local v17           #hasCameraKey:Z
    .end local v18           #hasHomeKey:Z
    .end local v19           #hasMenuKey:Z
    .end local v22           #homeCategory:Landroid/preference/PreferenceCategory;
    .end local v24           #menuCategory:Landroid/preference/PreferenceCategory;
    .end local v26           #needsNavigationBar:Z
    .end local v27           #powerCategory:Landroid/preference/PreferenceCategory;
    .end local v34           #volumeCategory:Landroid/preference/PreferenceCategory;
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 133
    .restart local v18       #hasHomeKey:Z
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 134
    .restart local v19       #hasMenuKey:Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 135
    .restart local v16       #hasAssistKey:Z
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 136
    .restart local v15       #hasAppSwitchKey:Z
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 182
    .restart local v3       #appSwitchCategory:Landroid/preference/PreferenceCategory;
    .restart local v4       #assistCategory:Landroid/preference/PreferenceCategory;
    .restart local v6       #cameraCategory:Landroid/preference/PreferenceCategory;
    .restart local v14       #hasAnyBindableKey:Z
    .restart local v17       #hasCameraKey:Z
    .restart local v22       #homeCategory:Landroid/preference/PreferenceCategory;
    .restart local v24       #menuCategory:Landroid/preference/PreferenceCategory;
    .restart local v26       #needsNavigationBar:Z
    .restart local v27       #powerCategory:Landroid/preference/PreferenceCategory;
    .restart local v34       #volumeCategory:Landroid/preference/PreferenceCategory;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->updateDisableNavkeysOption()V

    goto/16 :goto_6

    .line 185
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 194
    :cond_13
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 233
    :cond_14
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 241
    .restart local v29       #pressAction:I
    :cond_15
    const/16 v36, 0x3

    goto/16 :goto_9

    .line 248
    .end local v29           #pressAction:I
    :cond_16
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    .line 262
    :cond_17
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 276
    :cond_18
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 287
    .restart local v33       #value:Z
    :cond_19
    const/16 v36, 0x0

    goto/16 :goto_d

    .line 294
    .end local v33           #value:Z
    :cond_1a
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 302
    .restart local v32       #swapVolumeKeys:I
    :cond_1b
    const/16 v36, 0x0

    goto/16 :goto_f

    .line 313
    .end local v32           #swapVolumeKeys:I
    :cond_1c
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 319
    :cond_1d
    const/4 v13, 0x0

    goto/16 :goto_11

    .line 321
    .restart local v13       #forceNavbar:Z
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_12

    .line 332
    .restart local v20       #hasNavBar:Z
    :cond_1f
    :try_start_2
    const-string v36, "navigation_bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_13

    .line 334
    .end local v13           #forceNavbar:Z
    .end local v20           #hasNavBar:Z
    :catch_0
    move-exception v12

    .line 335
    .local v12, e:Landroid/os/RemoteException;
    const-string v36, "SystemSettings"

    const-string v37, "Error getting navigation bar status"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 175
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v36

    goto/16 :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v0, 0x1

    .line 391
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_home_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    :goto_0
    return v0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    const-string v2, "key_home_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_menu_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_menu_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 408
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_assist_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_4
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_5

    .line 412
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_assist_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_5
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_6

    .line 416
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_app_switch_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_6
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_7

    .line 420
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    const-string v2, "key_app_switch_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_7
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_8

    .line 424
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    const-string v2, "volume_key_cursor_control"

    invoke-direct {p0, v1, p2, v2}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 516
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 517
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    .line 519
    .local v1, value:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "swap_volume_keys_on_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 545
    .end local v1           #value:I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_2
    return v1

    :cond_2
    move v1, v2

    .line 517
    goto :goto_0

    .line 521
    :cond_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 523
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 524
    .local v0, isCameraWakeEnabled:Z
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraMusicControls:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 525
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    .line 527
    .end local v0           #isCameraWakeEnabled:Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 528
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/cyanogenmod/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    .line 530
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->updateDisableNavkeysOption()V

    .line 531
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/cyanogenmod/ButtonSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/cyanogenmod/ButtonSettings$1;-><init>(Lcom/android/settings/cyanogenmod/ButtonSettings;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 537
    :cond_6
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mPowerEndCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 538
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_2

    .line 540
    :cond_7
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeAnswerCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 541
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->handleToggleHomeButtonAnswersCallPreferenceClick()V

    goto :goto_2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 350
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 353
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mPowerEndCall:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "incall_power_button_behavior"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 357
    .local v2, incallPowerBehavior:I
    if-ne v2, v8, :cond_2

    move v3, v4

    .line 359
    .local v3, powerButtonEndsCall:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mPowerEndCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 363
    .end local v2           #incallPowerBehavior:I
    .end local v3           #powerButtonEndsCall:Z
    :cond_0
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeAnswerCall:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ring_home_button_behavior"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 367
    .local v1, incallHomeBehavior:I
    if-ne v1, v8, :cond_3

    move v0, v4

    .line 369
    .local v0, homeButtonAnswersCall:Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/ButtonSettings;->mHomeAnswerCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 371
    .end local v0           #homeButtonAnswersCall:Z
    .end local v1           #incallHomeBehavior:I
    :cond_1
    return-void

    .restart local v2       #incallPowerBehavior:I
    :cond_2
    move v3, v5

    .line 357
    goto :goto_0

    .end local v2           #incallPowerBehavior:I
    .restart local v1       #incallHomeBehavior:I
    :cond_3
    move v0, v5

    .line 367
    goto :goto_1
.end method
