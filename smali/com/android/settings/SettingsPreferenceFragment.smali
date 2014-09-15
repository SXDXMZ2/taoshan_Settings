.class public Lcom/android/settings/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mHelpUrl:Ljava/lang/String;

.field private mHighlightedPreferenceKey:Ljava/lang/String;

.field private mPrefsObserver:Landroid/database/DataSetObserver;

.field private mPrefsObserverRegistered:Z

.field private mSearchHighlightAdapter:Lcom/android/settings/search/SearchHighlightAdapterWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsPreferenceFragment$1;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPrefsObserver:Landroid/database/DataSetObserver;

    .line 290
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateHighlightPositionIfNeeded()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method private countPreferencesInGroup(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/util/Pair;
    .locals 8
    .parameter "group"
    .parameter "stopAt"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Landroid/preference/Preference;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 122
    const/4 v5, 0x0

    .local v5, result:I
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 123
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 124
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 127
    .local v2, p:Landroid/preference/Preference;
    if-ne v2, p2, :cond_0

    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 144
    .end local v2           #p:Landroid/preference/Preference;
    :goto_1
    return-object v6

    .line 132
    .restart local v2       #p:Landroid/preference/Preference;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 134
    instance-of v6, v2, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_1

    move-object v3, v2

    .line 136
    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 137
    .local v3, pg:Landroid/preference/PreferenceGroup;
    invoke-direct {p0, v3, p2}, Lcom/android/settings/SettingsPreferenceFragment;->countPreferencesInGroup(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/util/Pair;

    move-result-object v4

    .line 138
    .local v4, prefsInGroup:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    .line 139
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_1

    .line 123
    .end local v3           #pg:Landroid/preference/PreferenceGroup;
    .end local v4           #prefsInGroup:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v2           #p:Landroid/preference/Preference;
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_1
.end method

.method private updateHighlightPositionIfNeeded()V
    .locals 3

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightedPreferenceKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightedPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 111
    .local v1, pref:Landroid/preference/Preference;
    :goto_0
    if-nez v1, :cond_1

    .line 118
    :goto_1
    return-void

    .line 109
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 115
    .restart local v1       #pref:Landroid/preference/Preference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/SettingsPreferenceFragment;->countPreferencesInGroup(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    .local v0, position:I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSearchHighlightAdapter:Lcom/android/settings/search/SearchHighlightAdapterWrapper;

    invoke-virtual {v2, v0}, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->setHighlightedPosition(I)V

    goto :goto_1
.end method


# virtual methods
.method protected bindPreferences()V
    .locals 5

    .prologue
    .line 85
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 88
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPrefsObserverRegistered:Z

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPrefsObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 90
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPrefsObserverRegistered:Z

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightedPreferenceKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 96
    .local v1, highlightColor:I
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPrefsObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPrefsObserverRegistered:Z

    .line 99
    new-instance v2, Lcom/android/settings/search/SearchHighlightAdapterWrapper;

    const/16 v3, 0x12c

    const/16 v4, 0x28a

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/android/settings/search/SearchHighlightAdapterWrapper;-><init>(Landroid/widget/ListAdapter;III)V

    iput-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSearchHighlightAdapter:Lcom/android/settings/search/SearchHighlightAdapterWrapper;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSearchHighlightAdapter:Lcom/android/settings/search/SearchHighlightAdapterWrapper;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->updateHighlightPositionIfNeeded()V

    .line 106
    .end local v1           #highlightColor:I
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mSearchHighlightAdapter:Lcom/android/settings/search/SearchHighlightAdapterWrapper;

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 401
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 200
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 209
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "pref_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const-string v2, "pref_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightedPreferenceKey:Ljava/lang/String;

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightedPreferenceKey:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 155
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "pref_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightedPreferenceKey:Ljava/lang/String;

    .line 158
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 162
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    .line 78
    .local v0, helpResource:I
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    .line 81
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    const/16 v1, 0x65

    const v2, 0x7f080ba7

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 190
    .local v0, helpItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 192
    .end local v0           #helpItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 237
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 238
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightedPreferenceKey:Ljava/lang/String;

    .line 169
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 262
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 173
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->access$202(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 284
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 247
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 407
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const v3, 0x7f080564

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 409
    const/4 v1, 0x1

    .line 414
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 411
    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x0

    goto :goto_0
.end method
