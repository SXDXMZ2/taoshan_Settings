.class public Lcom/android/settings/headsup/HeadsUpSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HeadsUpSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/headsup/HeadsUpSettings$Package;
    }
.end annotation


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAddBlacklistPref:Landroid/preference/Preference;

.field private mAddDndPref:Landroid/preference/Preference;

.field private mBlacklistPackageList:Ljava/lang/String;

.field private mBlacklistPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/headsup/HeadsUpSettings$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mBlacklistPrefList:Landroid/preference/PreferenceGroup;

.field private mDisabledText:Landroid/view/View;

.field private mDndPackageList:Ljava/lang/String;

.field private mDndPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/headsup/HeadsUpSettings$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mDndPrefList:Landroid/preference/PreferenceGroup;

.field private mHeadsUpEnabler:Lcom/android/settings/headsup/HeadsUpEnabler;

.field private mPackageAdapter:Lcom/android/settings/cyanogenmod/PackageListAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/android/settings/headsup/HeadsUpSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/headsup/HeadsUpSettings$1;-><init>(Lcom/android/settings/headsup/HeadsUpSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/headsup/HeadsUpSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->updateEnabledState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/headsup/HeadsUpSettings;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPackages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/headsup/HeadsUpSettings;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/headsup/HeadsUpSettings;->addCustomApplicationPref(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/headsup/HeadsUpSettings;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPackages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/headsup/HeadsUpSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/headsup/HeadsUpSettings;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/headsup/HeadsUpSettings;->removeApplicationPref(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/headsup/HeadsUpSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPrefList:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method private addCustomApplicationPref(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/headsup/HeadsUpSettings$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/headsup/HeadsUpSettings$Package;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/headsup/HeadsUpSettings$Package;

    .line 315
    .local v0, pkg:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/android/settings/headsup/HeadsUpSettings$Package;

    .end local v0           #pkg:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    invoke-direct {v0, p1}, Lcom/android/settings/headsup/HeadsUpSettings$Package;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v0       #pkg:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/android/settings/headsup/HeadsUpSettings;->savePackageList(ZLjava/util/Map;)V

    .line 319
    invoke-direct {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->refreshCustomApplicationPrefs()V

    .line 321
    :cond_0
    return-void
.end method

.method private createPreferenceFromInfo(Lcom/android/settings/headsup/HeadsUpSettings$Package;)Landroid/preference/Preference;
    .locals 5
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/android/settings/headsup/HeadsUpSettings$Package;->name:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 327
    .local v0, info:Landroid/content/pm/PackageInfo;
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 329
    .local v1, pref:Landroid/preference/Preference;
    iget-object v2, p1, Lcom/android/settings/headsup/HeadsUpSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 330
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 332
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 333
    return-object v1
.end method

.method private parseAndAddToMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter "baseString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/headsup/HeadsUpSettings$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/headsup/HeadsUpSettings$Package;>;"
    if-nez p1, :cond_1

    .line 381
    :cond_0
    return-void

    .line 373
    :cond_1
    const-string v6, "\\|"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 375
    .local v3, item:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 374
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_2
    invoke-static {v3}, Lcom/android/settings/headsup/HeadsUpSettings$Package;->fromString(Ljava/lang/String;)Lcom/android/settings/headsup/HeadsUpSettings$Package;

    move-result-object v5

    .line 379
    .local v5, pkg:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    iget-object v6, v5, Lcom/android/settings/headsup/HeadsUpSettings$Package;->name:Ljava/lang/String;

    invoke-interface {p2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private parsePackageList()Z
    .locals 5

    .prologue
    .line 344
    const/4 v2, 0x0

    .line 346
    .local v2, parsed:Z
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "heads_up_custom_values"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, dndString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "heads_up_blacklist_values"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, blacklistString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPackageList:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    iput-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPackageList:Ljava/lang/String;

    .line 353
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPackages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 354
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPackages:Ljava/util/Map;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/headsup/HeadsUpSettings;->parseAndAddToMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 355
    const/4 v2, 0x1

    .line 358
    :cond_0
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPackageList:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 359
    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPackageList:Ljava/lang/String;

    .line 360
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPackages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 361
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPackages:Ljava/util/Map;

    invoke-direct {p0, v0, v3}, Lcom/android/settings/headsup/HeadsUpSettings;->parseAndAddToMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 362
    const/4 v2, 0x1

    .line 365
    :cond_1
    return v2
.end method

.method private refreshCustomApplicationPrefs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-direct {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->parsePackageList()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 271
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 272
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 274
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPackages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/headsup/HeadsUpSettings$Package;

    .line 276
    .local v1, pkg:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/settings/headsup/HeadsUpSettings;->createPreferenceFromInfo(Lcom/android/settings/headsup/HeadsUpSettings$Package;)Landroid/preference/Preference;

    move-result-object v2

    .line 277
    .local v2, pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 278
    .end local v2           #pref:Landroid/preference/Preference;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 283
    .end local v1           #pkg:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPackages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/headsup/HeadsUpSettings$Package;

    .line 285
    .restart local v1       #pkg:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/settings/headsup/HeadsUpSettings;->createPreferenceFromInfo(Lcom/android/settings/headsup/HeadsUpSettings$Package;)Landroid/preference/Preference;

    move-result-object v2

    .line 286
    .restart local v2       #pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 287
    .end local v2           #pref:Landroid/preference/Preference;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 294
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pkg:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddDndPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 295
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddBlacklistPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 297
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPrefList:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddDndPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 298
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddBlacklistPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private removeApplicationPref(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/headsup/HeadsUpSettings$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/headsup/HeadsUpSettings$Package;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/headsup/HeadsUpSettings;->savePackageList(ZLjava/util/Map;)V

    .line 339
    invoke-direct {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->refreshCustomApplicationPrefs()V

    .line 341
    :cond_0
    return-void
.end method

.method private savePackageList(ZLjava/util/Map;)V
    .locals 6
    .parameter "preferencesUpdated"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/headsup/HeadsUpSettings$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/headsup/HeadsUpSettings$Package;>;"
    iget-object v5, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPackages:Ljava/util/Map;

    if-ne p2, v5, :cond_0

    const-string v2, "heads_up_custom_values"

    .line 388
    .local v2, setting:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v3, settings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/headsup/HeadsUpSettings$Package;

    .line 390
    .local v0, app:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    invoke-virtual {v0}, Lcom/android/settings/headsup/HeadsUpSettings$Package;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    .end local v0           #app:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #setting:Ljava/lang/String;
    .end local v3           #settings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v2, "heads_up_blacklist_values"

    goto :goto_0

    .line 392
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #setting:Ljava/lang/String;
    .restart local v3       #settings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v5, "|"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, value:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 394
    const-string v5, "heads_up_custom_values"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 395
    iput-object v4, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPackageList:Ljava/lang/String;

    .line 400
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 401
    return-void

    .line 397
    :cond_3
    iput-object v4, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPackageList:Ljava/lang/String;

    goto :goto_2
.end method

.method private updateEnabledState()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "heads_up_enabled"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 406
    .local v0, enabled:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPrefsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 407
    iget-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDisabledText:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 408
    return-void

    .end local v0           #enabled:Z
    :cond_0
    move v0, v1

    .line 404
    goto :goto_0

    .restart local v0       #enabled:Z
    :cond_1
    move v2, v3

    .line 406
    goto :goto_1

    :cond_2
    move v3, v1

    .line 407
    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 120
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 123
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 126
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 132
    .end local v1           #padding:I
    :cond_0
    new-instance v2, Lcom/android/settings/headsup/HeadsUpEnabler;

    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/headsup/HeadsUpEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mHeadsUpEnabler:Lcom/android/settings/headsup/HeadsUpEnabler;

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/headsup/HeadsUpSettings;->setHasOptionsMenu(Z)V

    .line 136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/android/settings/headsup/HeadsUpSettings;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 92
    new-instance v0, Lcom/android/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cyanogenmod/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPackageAdapter:Lcom/android/settings/cyanogenmod/PackageListAdapter;

    .line 94
    const-string v0, "dnd_applications_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/headsup/HeadsUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPrefList:Landroid/preference/PreferenceGroup;

    .line 95
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 97
    const-string v0, "blacklist_applications"

    invoke-virtual {p0, v0}, Lcom/android/settings/headsup/HeadsUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    .line 98
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPackages:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPackages:Ljava/util/Map;

    .line 103
    const-string v0, "add_dnd_packages"

    invoke-virtual {p0, v0}, Lcom/android/settings/headsup/HeadsUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddDndPref:Landroid/preference/Preference;

    .line 104
    const-string v0, "add_blacklist_packages"

    invoke-virtual {p0, v0}, Lcom/android/settings/headsup/HeadsUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddBlacklistPref:Landroid/preference/Preference;

    .line 106
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddDndPref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddBlacklistPref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 197
    .local v2, list:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPackageAdapter:Lcom/android/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    const v3, 0x7f0c0103

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 203
    .local v1, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 226
    :goto_0
    return-object v1

    .line 205
    :pswitch_0
    new-instance v3, Lcom/android/settings/headsup/HeadsUpSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/headsup/HeadsUpSettings$2;-><init>(Lcom/android/settings/headsup/HeadsUpSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 216
    :pswitch_1
    new-instance v3, Lcom/android/settings/headsup/HeadsUpSettings$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/headsup/HeadsUpSettings$3;-><init>(Lcom/android/settings/headsup/HeadsUpSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 141
    const v2, 0x7f04004f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0d00e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 143
    const v2, 0x7f0d00e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDisabledText:Landroid/view/View;

    .line 145
    iget-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-super {p0, p1, v2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, prefs:Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 154
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 155
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 415
    .local v1, pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mDndPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eq v3, v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v2

    .line 420
    :cond_1
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddDndPref:Landroid/preference/Preference;

    if-eq v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddBlacklistPref:Landroid/preference/Preference;

    if-eq v3, v1, :cond_0

    .line 425
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getActivity()Landroid/app/Activity;

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

    new-instance v4, Lcom/android/settings/headsup/HeadsUpSettings$4;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/headsup/HeadsUpSettings$4;-><init>(Lcom/android/settings/headsup/HeadsUpSettings;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 441
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 442
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mHeadsUpEnabler:Lcom/android/settings/headsup/HeadsUpEnabler;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mHeadsUpEnabler:Lcom/android/settings/headsup/HeadsUpEnabler;

    invoke-virtual {v0}, Lcom/android/settings/headsup/HeadsUpEnabler;->pause()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 187
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 303
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddDndPref:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/headsup/HeadsUpSettings;->showDialog(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mAddBlacklistPref:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 308
    invoke-virtual {p0, v1}, Lcom/android/settings/headsup/HeadsUpSettings;->showDialog(I)V

    .line 310
    :cond_1
    return v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mHeadsUpEnabler:Lcom/android/settings/headsup/HeadsUpEnabler;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mHeadsUpEnabler:Lcom/android/settings/headsup/HeadsUpEnabler;

    invoke-virtual {v0}, Lcom/android/settings/headsup/HeadsUpEnabler;->resume()V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->refreshCustomApplicationPrefs()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->updateEnabledState()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpSettings;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/headsup/HeadsUpSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 178
    :cond_1
    return-void
.end method
