.class public Lcom/android/settings/notificationlight/NotificationLightSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notificationlight/NotificationLightSettings$Package;
    }
.end annotation


# instance fields
.field private mApplicationPrefList:Landroid/preference/PreferenceGroup;

.field private mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

.field private mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mDefaultColor:I

.field private mDefaultLedOff:I

.field private mDefaultLedOn:I

.field private mDefaultPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

.field private mEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mMenu:Landroid/view/Menu;

.field private mPackageAdapter:Lcom/android/settings/cyanogenmod/PackageListAdapter;

.field private mPackageList:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notificationlight/NotificationLightSettings$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/notificationlight/NotificationLightSettings;->removeCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method private addCustomApplicationPref(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;

    .line 251
    .local v0, pkg:Lcom/android/settings/notificationlight/NotificationLightSettings$Package;
    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;

    .end local v0           #pkg:Lcom/android/settings/notificationlight/NotificationLightSettings$Package;
    iget v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 253
    .restart local v0       #pkg:Lcom/android/settings/notificationlight/NotificationLightSettings$Package;
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 255
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 257
    :cond_0
    return-void
.end method

.method private parsePackageList()Z
    .locals 9

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_light_pulse_custom_values"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, baseString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    const/4 v7, 0x0

    .line 290
    :goto_0
    return v7

    .line 274
    :cond_0
    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 275
    iget-object v7, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 277
    if-eqz v2, :cond_3

    .line 278
    const-string v7, "\\|"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v4, v0, v3

    .line 280
    .local v4, item:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 279
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 283
    :cond_2
    invoke-static {v4}, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->fromString(Ljava/lang/String;)Lcom/android/settings/notificationlight/NotificationLightSettings$Package;

    move-result-object v6

    .line 284
    .local v6, pkg:Lcom/android/settings/notificationlight/NotificationLightSettings$Package;
    if-eqz v6, :cond_1

    .line 285
    iget-object v7, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    iget-object v8, v6, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 290
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #array:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #item:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #pkg:Lcom/android/settings/notificationlight/NotificationLightSettings$Package;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private refreshCustomApplicationPrefs()V
    .locals 8

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 220
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->parsePackageList()Z

    move-result v5

    if-nez v5, :cond_1

    .line 247
    :cond_0
    return-void

    .line 225
    :cond_1
    iget-object v5, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    .line 226
    iget-object v5, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 228
    iget-object v5, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;

    .line 230
    .local v3, pkg:Lcom/android/settings/notificationlight/NotificationLightSettings$Package;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 232
    .local v2, info:Landroid/content/pm/PackageInfo;
    new-instance v4, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    iget-object v5, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/android/settings/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;III)V

    .line 235
    .local v4, pref:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    iget-object v5, v3, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setKey(Ljava/lang/String;)V

    .line 236
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 238
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setPersistent(Z)V

    .line 239
    invoke-virtual {v4, p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    iget-object v5, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #pref:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private refreshDefault()V
    .locals 12

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 181
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v10, "notification_light_pulse_default_color"

    iget v11, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 183
    .local v3, color:I
    const-string v10, "notification_light_pulse_default_led_on"

    iget v11, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 185
    .local v6, timeOn:I
    const-string v10, "notification_light_pulse_default_led_off"

    iget v11, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 188
    .local v5, timeOff:I
    iget-object v10, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v3, v6, v5}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 191
    iget-object v10, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_0

    .line 192
    const-string v10, "notification_light_pulse_call_color"

    iget v11, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, callColor:I
    const-string v10, "notification_light_pulse_call_led_on"

    iget v11, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 196
    .local v2, callTimeOn:I
    const-string v10, "notification_light_pulse_call_led_off"

    iget v11, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 199
    .local v1, callTimeOff:I
    iget-object v10, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v0, v2, v1}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 202
    .end local v0           #callColor:I
    .end local v1           #callTimeOff:I
    .end local v2           #callTimeOn:I
    :cond_0
    iget-object v10, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    if-eqz v10, :cond_1

    .line 203
    const-string v10, "notification_light_pulse_vmail_color"

    iget v11, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 205
    .local v7, vmailColor:I
    const-string v10, "notification_light_pulse_vmail_led_on"

    iget v11, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 207
    .local v9, vmailTimeOn:I
    const-string v10, "notification_light_pulse_vmail_led_off"

    iget v11, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v4, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 210
    .local v8, vmailTimeOff:I
    iget-object v10, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v10, v7, v9, v8}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 213
    .end local v7           #vmailColor:I
    .end local v8           #vmailTimeOff:I
    .end local v9           #vmailTimeOn:I
    :cond_1
    const-string v10, "applications_list"

    invoke-virtual {p0, v10}, Lcom/android/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    iput-object v10, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    .line 214
    iget-object v10, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 215
    return-void
.end method

.method private removeCustomApplicationPref(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 262
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 264
    :cond_0
    return-void
.end method

.method private savePackageList(Z)V
    .locals 6
    .parameter "preferencesUpdated"

    .prologue
    .line 294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v2, settings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;

    .line 296
    .local v0, app:Lcom/android/settings/notificationlight/NotificationLightSettings$Package;
    invoke-virtual {v0}, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    .end local v0           #app:Lcom/android/settings/notificationlight/NotificationLightSettings$Package;
    :cond_0
    const-string v4, "|"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, value:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 300
    iput-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse_custom_values"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    return-void
.end method

.method private setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V
    .locals 5
    .parameter "group"
    .parameter "started"

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 164
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 165
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 166
    .local v3, pref:Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 167
    check-cast v0, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .line 168
    .local v0, ap:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    if-eqz p2, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->onStart()V

    .line 164
    .end local v0           #ap:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    .end local v3           #pref:Landroid/preference/Preference;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .restart local v0       #ap:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    .restart local v3       #pref:Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->onStop()V

    goto :goto_1

    .line 173
    .end local v0           #ap:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    :cond_2
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 174
    check-cast v3, Landroid/preference/PreferenceGroup;

    .end local v3           #pref:Landroid/preference/Preference;
    invoke-direct {p0, v3, p2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    goto :goto_1

    .line 177
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v2, 0x7f05002d

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, resources:Landroid/content/res/Resources;
    const v2, 0x106006f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 102
    const v2, 0x10e0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 104
    const v2, 0x10e0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 107
    const-string v2, "notification_light_pulse"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 109
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    const-string v2, "notification_light_pulse_custom_enable"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 112
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .line 115
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 119
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-nez v2, :cond_0

    .line 120
    const-string v2, "phone_list"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->removePreference(Ljava/lang/String;)V

    .line 129
    :goto_0
    const-string v2, "applications_list"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    .line 130
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 134
    new-instance v2, Lcom/android/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/cyanogenmod/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/android/settings/cyanogenmod/PackageListAdapter;

    .line 136
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    .line 138
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    .line 139
    return-void

    .line 122
    :cond_0
    const-string v2, "missed_call"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .line 123
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const-string v2, "voicemail"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .line 126
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 411
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 433
    const/4 v1, 0x0

    .line 435
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 415
    .end local v1           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 416
    .local v2, list:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/android/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 418
    const v3, 0x7f0c0103

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 422
    .restart local v1       #dialog:Landroid/app/Dialog;
    new-instance v3, Lcom/android/settings/notificationlight/NotificationLightSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/notificationlight/NotificationLightSettings$2;-><init>(Lcom/android/settings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 384
    iput-object p1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    .line 385
    iget-object v0, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c00c0

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020082

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 388
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 350
    .local v1, pref:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 351
    const/4 v2, 0x0

    .line 367
    :goto_0
    return v2

    .line 354
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0149

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c014a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/notificationlight/NotificationLightSettings$1;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/notificationlight/NotificationLightSettings$1;-><init>(Lcom/android/settings/notificationlight/NotificationLightSettings;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 366
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 367
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 403
    :goto_0
    return v0

    .line 400
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->showDialog(I)V

    .line 401
    const/4 v0, 0x1

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 371
    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_1

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 379
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v0, p1

    .line 374
    check-cast v0, Lcom/android/settings/notificationlight/ApplicationLightPreference;

    .line 375
    .local v0, lightPref:Lcom/android/settings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getOnValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/notificationlight/ApplicationLightPreference;->getOffValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/notificationlight/NotificationLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 393
    .local v0, enableAddButton:Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 394
    return-void

    .end local v0           #enableAddButton:Z
    :cond_0
    move v0, v1

    .line 392
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 148
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    .line 154
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notificationlight/NotificationLightSettings;->setChildrenStarted(Landroid/preference/PreferenceGroup;Z)V

    .line 160
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .parameter "packageName"
    .parameter "color"
    .parameter "timeon"
    .parameter "timeoff"

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 317
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    const-string v2, "notification_light_pulse_default_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    const-string v2, "notification_light_pulse_default_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    const-string v2, "notification_light_pulse_default_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string v2, "missed_call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    const-string v2, "notification_light_pulse_call_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    const-string v2, "notification_light_pulse_call_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    const-string v2, "notification_light_pulse_call_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    .line 329
    :cond_2
    const-string v2, "voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 330
    const-string v2, "notification_light_pulse_vmail_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    const-string v2, "notification_light_pulse_vmail_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    const-string v2, "notification_light_pulse_vmail_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    invoke-direct {p0}, Lcom/android/settings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    .line 338
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;

    .line 339
    .local v0, app:Lcom/android/settings/notificationlight/NotificationLightSettings$Package;
    if-eqz v0, :cond_0

    .line 340
    iput-object p2, v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    .line 341
    iput-object p3, v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    .line 342
    iput-object p4, v0, Lcom/android/settings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    .line 343
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    goto :goto_0
.end method
