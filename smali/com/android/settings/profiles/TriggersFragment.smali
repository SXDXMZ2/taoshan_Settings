.class public Lcom/android/settings/profiles/TriggersFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TriggersFragment.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/profiles/TriggersFragment$Trigger;
    }
.end annotation


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mProfile:Landroid/app/Profile;

.field private mProfileManager:Landroid/app/ProfileManager;

.field private mSelectedTrigger:Landroid/preference/Preference;

.field private mTriggerFilter:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    .line 198
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/TriggersFragment;)Landroid/app/Profile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/profiles/TriggersFragment;)Landroid/app/ProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/profiles/TriggersFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/profiles/TriggersFragment;->loadPreferences()V

    return-void
.end method

.method private initPreference(Lcom/android/settings/profiles/AbstractTriggerPreference;ILandroid/content/res/Resources;I)V
    .locals 3
    .parameter "pref"
    .parameter "state"
    .parameter "res"
    .parameter "icon"

    .prologue
    .line 105
    const v2, 0x7f0c0076

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 107
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 108
    const v2, 0x7f0c0075

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/settings/profiles/AbstractTriggerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settings/profiles/AbstractTriggerPreference;->setTriggerState(I)V

    .line 113
    invoke-virtual {p1, p4}, Lcom/android/settings/profiles/AbstractTriggerPreference;->setIcon(I)V

    .line 114
    return-void

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 82
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/profiles/TriggersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 85
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0c0077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, navItems:[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090003

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 90
    .local v1, navAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 91
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 93
    return-void
.end method

.method private loadPreferences()V
    .locals 17

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 118
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 119
    .local v10, res:Landroid/content/res/Resources;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v9, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/profiles/AbstractTriggerPreference;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 123
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    if-nez v14, :cond_2

    .line 124
    :cond_0
    if-eqz v4, :cond_1

    .line 125
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 126
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Lcom/android/settings/profiles/WifiTriggerAPPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v1, v14, v3}, Lcom/android/settings/profiles/WifiTriggerAPPreference;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 128
    .local v1, accessPoint:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    const/4 v15, 0x0

    invoke-virtual {v1}, Lcom/android/settings/profiles/WifiTriggerAPPreference;->getSSID()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v11

    .line 129
    .local v11, state:I
    const v14, 0x7f0200f9

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11, v10, v14}, Lcom/android/settings/profiles/TriggersFragment;->initPreference(Lcom/android/settings/profiles/AbstractTriggerPreference;ILandroid/content/res/Resources;I)V

    .line 130
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    .end local v1           #accessPoint:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #state:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 134
    .local v13, triggers:Ljava/util/List;,"Ljava/util/List<Landroid/app/Profile$ProfileTrigger;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/Profile$ProfileTrigger;

    .line 135
    .local v12, trigger:Landroid/app/Profile$ProfileTrigger;
    new-instance v1, Lcom/android/settings/profiles/WifiTriggerAPPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v12}, Landroid/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v14, v15}, Lcom/android/settings/profiles/WifiTriggerAPPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    .restart local v1       #accessPoint:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    invoke-virtual {v12}, Landroid/app/Profile$ProfileTrigger;->getState()I

    move-result v14

    const v15, 0x7f0200f9

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14, v10, v15}, Lcom/android/settings/profiles/TriggersFragment;->initPreference(Lcom/android/settings/profiles/AbstractTriggerPreference;ILandroid/content/res/Resources;I)V

    .line 138
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    .end local v1           #accessPoint:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #trigger:Landroid/app/Profile$ProfileTrigger;
    .end local v13           #triggers:Ljava/util/List;,"Ljava/util/List<Landroid/app/Profile$ProfileTrigger;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v7

    .line 144
    .local v7, pairedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    if-nez v14, :cond_5

    .line 145
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 146
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 147
    .local v5, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Lcom/android/settings/profiles/BluetoothTriggerPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v2, v14, v5}, Lcom/android/settings/profiles/BluetoothTriggerPreference;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 149
    .local v2, bt:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    const/4 v15, 0x1

    invoke-virtual {v2}, Lcom/android/settings/profiles/BluetoothTriggerPreference;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v11

    .line 150
    .restart local v11       #state:I
    const v14, 0x7f0200aa

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v10, v14}, Lcom/android/settings/profiles/TriggersFragment;->initPreference(Lcom/android/settings/profiles/AbstractTriggerPreference;ILandroid/content/res/Resources;I)V

    .line 151
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 154
    .end local v2           #bt:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    .end local v5           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #state:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 155
    .restart local v13       #triggers:Ljava/util/List;,"Ljava/util/List<Landroid/app/Profile$ProfileTrigger;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/Profile$ProfileTrigger;

    .line 156
    .restart local v12       #trigger:Landroid/app/Profile$ProfileTrigger;
    new-instance v2, Lcom/android/settings/profiles/BluetoothTriggerPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v12}, Landroid/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Landroid/app/Profile$ProfileTrigger;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v14, v15, v0}, Lcom/android/settings/profiles/BluetoothTriggerPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .restart local v2       #bt:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    invoke-virtual {v12}, Landroid/app/Profile$ProfileTrigger;->getState()I

    move-result v14

    const v15, 0x7f0200aa

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v10, v15}, Lcom/android/settings/profiles/TriggersFragment;->initPreference(Lcom/android/settings/profiles/AbstractTriggerPreference;ILandroid/content/res/Resources;I)V

    .line 159
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 164
    .end local v2           #bt:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #trigger:Landroid/app/Profile$ProfileTrigger;
    .end local v13           #triggers:Ljava/util/List;,"Ljava/util/List<Landroid/app/Profile$ProfileTrigger;>;"
    :cond_5
    new-instance v14, Lcom/android/settings/profiles/TriggersFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/profiles/TriggersFragment$1;-><init>(Lcom/android/settings/profiles/TriggersFragment;)V

    invoke-static {v9, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/profiles/AbstractTriggerPreference;

    .line 180
    .local v8, pref:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 183
    .end local v8           #pref:Landroid/preference/Preference;
    :cond_6
    return-void
.end method

.method private removeTrigger(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/profiles/TriggersFragment$Trigger;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, triggers:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/profiles/TriggersFragment$Trigger;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/profiles/TriggersFragment$Trigger;

    .line 205
    .local v1, t:Lcom/android/settings/profiles/TriggersFragment$Trigger;
    iget v2, v1, Lcom/android/settings/profiles/TriggersFragment$Trigger;->value:I

    if-ne v2, p2, :cond_0

    .line 206
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    .end local v1           #t:Lcom/android/settings/profiles/TriggersFragment$Trigger;
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    const-string v0, "profile"

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/TriggersFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mProfileManager:Landroid/app/ProfileManager;

    .line 67
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/TriggersFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/profiles/TriggersFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 69
    const v0, 0x7f050065

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/TriggersFragment;->addPreferencesFromResource(I)V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/profiles/TriggersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 100
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    iput-object v1, p0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 20
    .parameter "dialogId"

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/profiles/TriggersFragment;->mSelectedTrigger:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, triggerName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 218
    .local v12, entries:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 219
    .local v18, values:[Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    array-length v2, v12

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v17, triggers:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/profiles/TriggersFragment$Trigger;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    array-length v2, v12

    if-ge v13, v2, :cond_0

    .line 221
    new-instance v16, Lcom/android/settings/profiles/TriggersFragment$Trigger;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/profiles/TriggersFragment$Trigger;-><init>(Lcom/android/settings/profiles/TriggersFragment;Lcom/android/settings/profiles/TriggersFragment$1;)V

    .line 222
    .local v16, toAdd:Lcom/android/settings/profiles/TriggersFragment$Trigger;
    aget-object v2, v18, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/settings/profiles/TriggersFragment$Trigger;->value:I

    .line 223
    aget-object v2, v12, v13

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/settings/profiles/TriggersFragment$Trigger;->name:Ljava/lang/String;

    .line 224
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 227
    .end local v16           #toAdd:Lcom/android/settings/profiles/TriggersFragment$Trigger;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 246
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    .line 261
    :goto_1
    return-object v2

    .line 229
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/profiles/TriggersFragment;->mSelectedTrigger:Landroid/preference/Preference;

    check-cast v14, Lcom/android/settings/profiles/WifiTriggerAPPreference;

    .line 230
    .local v14, pref:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    invoke-virtual {v14}, Lcom/android/settings/profiles/WifiTriggerAPPreference;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, id:Ljava/lang/String;
    const/4 v4, 0x0

    .line 232
    .local v4, triggerType:I
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/profiles/TriggersFragment;->removeTrigger(Ljava/util/List;I)V

    .line 233
    const/4 v2, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/profiles/TriggersFragment;->removeTrigger(Ljava/util/List;I)V

    .line 249
    .end local v14           #pref:Lcom/android/settings/profiles/WifiTriggerAPPreference;
    :cond_1
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    new-array v12, v2, [Ljava/lang/String;

    .line 250
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [I

    .line 251
    .local v6, valueInts:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/profiles/TriggersFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v4, v5}, Landroid/app/Profile;->getTrigger(ILjava/lang/String;)I

    move-result v10

    .line 252
    .local v10, currentTrigger:I
    const/4 v9, -0x1

    .line 253
    .local v9, currentItem:I
    const/4 v13, 0x0

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_3

    .line 254
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/profiles/TriggersFragment$Trigger;

    .line 255
    .local v15, t:Lcom/android/settings/profiles/TriggersFragment$Trigger;
    iget-object v2, v15, Lcom/android/settings/profiles/TriggersFragment$Trigger;->name:Ljava/lang/String;

    aput-object v2, v12, v13

    .line 256
    iget v2, v15, Lcom/android/settings/profiles/TriggersFragment$Trigger;->value:I

    aput v2, v6, v13

    .line 257
    aget v2, v6, v13

    if-ne v2, v10, :cond_2

    .line 258
    move v9, v13

    .line 253
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 236
    .end local v4           #triggerType:I
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #valueInts:[I
    .end local v9           #currentItem:I
    .end local v10           #currentTrigger:I
    .end local v15           #t:Lcom/android/settings/profiles/TriggersFragment$Trigger;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/profiles/TriggersFragment;->mSelectedTrigger:Landroid/preference/Preference;

    check-cast v8, Lcom/android/settings/profiles/BluetoothTriggerPreference;

    .line 237
    .local v8, btpref:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    invoke-virtual {v8}, Lcom/android/settings/profiles/BluetoothTriggerPreference;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 238
    .restart local v5       #id:Ljava/lang/String;
    const/4 v4, 0x1

    .line 239
    .restart local v4       #triggerType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/profiles/TriggersFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 240
    .local v11, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/profiles/TriggersFragment;->removeTrigger(Ljava/util/List;I)V

    .line 242
    const/4 v2, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/profiles/TriggersFragment;->removeTrigger(Ljava/util/List;I)V

    goto :goto_2

    .line 261
    .end local v8           #btpref:Lcom/android/settings/profiles/BluetoothTriggerPreference;
    .end local v11           #dev:Landroid/bluetooth/BluetoothDevice;
    .restart local v6       #valueInts:[I
    .restart local v9       #currentItem:I
    .restart local v10       #currentTrigger:I
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/profiles/TriggersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0800c4

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    new-instance v2, Lcom/android/settings/profiles/TriggersFragment$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/profiles/TriggersFragment$2;-><init>(Lcom/android/settings/profiles/TriggersFragment;ILjava/lang/String;[ILjava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v9, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 1
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    .line 279
    iput p1, p0, Lcom/android/settings/profiles/TriggersFragment;->mTriggerFilter:I

    .line 280
    invoke-direct {p0}, Lcom/android/settings/profiles/TriggersFragment;->loadPreferences()V

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 187
    iput-object p2, p0, Lcom/android/settings/profiles/TriggersFragment;->mSelectedTrigger:Landroid/preference/Preference;

    .line 188
    instance-of v1, p2, Lcom/android/settings/profiles/WifiTriggerAPPreference;

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/TriggersFragment;->showDialog(I)V

    .line 195
    :goto_0
    return v0

    .line 191
    :cond_0
    instance-of v1, p2, Lcom/android/settings/profiles/BluetoothTriggerPreference;

    if-eqz v1, :cond_1

    .line 192
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/profiles/TriggersFragment;->showDialog(I)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/profiles/TriggersFragment;->loadPreferences()V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/profiles/TriggersFragment;->loadActionBar()V

    .line 77
    return-void
.end method
