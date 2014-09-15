.class public Lcom/android/settings/cyanogenmod/Processor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Processor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;
    }
.end annotation


# static fields
.field private static FREQ_CUR_FILE:Ljava/lang/String;

.field public static FREQ_MAX_FILE:Ljava/lang/String;

.field public static FREQ_MIN_FILE:Ljava/lang/String;

.field protected static freqCapFilesInitialized:Z


# instance fields
.field private mCurCPUHandler:Landroid/os/Handler;

.field private mCurCPUThread:Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

.field private mCurFrequencyPref:Landroid/preference/Preference;

.field private mGovernorFormat:Ljava/lang/String;

.field private mGovernorPref:Landroid/preference/ListPreference;

.field private mMaxFrequencyFormat:Ljava/lang/String;

.field private mMaxFrequencyPref:Landroid/preference/ListPreference;

.field private mMinFrequencyFormat:Ljava/lang/String;

.field private mMinFrequencyPref:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    sput-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    .line 53
    sput-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/cyanogenmod/Processor;->freqCapFilesInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;-><init>(Lcom/android/settings/cyanogenmod/Processor;Lcom/android/settings/cyanogenmod/Processor$1;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUThread:Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

    .line 92
    new-instance v0, Lcom/android/settings/cyanogenmod/Processor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/Processor$1;-><init>(Lcom/android/settings/cyanogenmod/Processor;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/Processor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/Processor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/Processor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/cyanogenmod/Processor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/Processor;->updateCpufreqValues()V

    return-void
.end method

.method private initFreqCapFiles()V
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/settings/cyanogenmod/Processor;->freqCapFilesInitialized:Z

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    const v0, 0x7f0c042b

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    .line 103
    const v0, 0x7f0c042c

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/cyanogenmod/Processor;->freqCapFilesInitialized:Z

    goto :goto_0
.end method

.method private toMHz(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mhzString"

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateCpufreqValues()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 204
    sget-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, temp:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    .end local v0           #temp:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #temp:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    .end local v0           #temp:Ljava/lang/String;
    :cond_1
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v1}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v1}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #temp:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    .end local v0           #temp:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/Processor;->initFreqCapFiles()V

    .line 113
    const v8, 0x7f0c0233

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    .line 114
    const v8, 0x7f0c0235

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    .line 115
    const v8, 0x7f0c0237

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    .line 117
    new-array v0, v12, [Ljava/lang/String;

    .line 118
    .local v0, availableFrequencies:[Ljava/lang/String;
    new-array v2, v12, [Ljava/lang/String;

    .line 124
    .local v2, availableGovernors:[Ljava/lang/String;
    const v8, 0x7f050038

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->addPreferencesFromResource(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Processor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 128
    .local v6, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v8, "pref_cpu_gov"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    .line 129
    const-string v8, "pref_cpu_freq_cur"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    .line 130
    const-string v8, "pref_cpu_freq_min"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    .line 131
    const-string v8, "pref_cpu_freq_max"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    .line 135
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, temp:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, availableGovernorsLine:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 136
    .end local v3           #availableGovernorsLine:Ljava/lang/String;
    .end local v7           #temp:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :goto_0
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, availableFrequenciesLine:Ljava/lang/String;
    if-nez v1, :cond_5

    .line 150
    .end local v1           #availableFrequenciesLine:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 151
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 187
    :goto_1
    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 188
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

    sput-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    .line 191
    :cond_2
    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #temp:Ljava/lang/String;
    if-nez v7, :cond_b

    .line 192
    .end local v7           #temp:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    :goto_2
    return-void

    .line 139
    .restart local v3       #availableGovernorsLine:Ljava/lang/String;
    .restart local v7       #temp:Ljava/lang/String;
    :cond_4
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 142
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 143
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 144
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v7, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 154
    .end local v3           #availableGovernorsLine:Ljava/lang/String;
    .end local v7           #temp:Ljava/lang/String;
    .restart local v1       #availableFrequenciesLine:Ljava/lang/String;
    :cond_5
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    array-length v8, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 157
    .local v4, frequencies:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    array-length v8, v4

    if-ge v5, v8, :cond_6

    .line 158
    aget-object v8, v0, v5

    invoke-direct {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 162
    :cond_6
    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #temp:Ljava/lang/String;
    if-nez v7, :cond_9

    .line 163
    .end local v7           #temp:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 174
    :goto_4
    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #temp:Ljava/lang/String;
    if-nez v7, :cond_a

    .line 175
    .end local v7           #temp:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 166
    .restart local v7       #temp:Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 167
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 168
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 169
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_4

    .line 178
    :cond_a
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 179
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 180
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 181
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 195
    .end local v1           #availableFrequenciesLine:Ljava/lang/String;
    .end local v4           #frequencies:[Ljava/lang/String;
    .end local v5           #i:I
    :cond_b
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUThread:Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

    invoke-virtual {v8}, Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;->start()V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 229
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUThread:Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;->interrupt()V

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUThread:Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 237
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/Processor;->initFreqCapFiles()V

    move-object v2, p2

    .line 239
    check-cast v2, Ljava/lang/String;

    .line 240
    .local v2, newValue:Ljava/lang/String;
    const-string v1, ""

    .line 242
    .local v1, fname:Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 243
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_3

    .line 244
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    .line 251
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 252
    move-object v0, v1

    .line 253
    .local v0, file:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 254
    .local v3, nrcpus:I
    if-le v3, v4, :cond_1

    .line 255
    new-instance v6, Lcom/android/settings/cyanogenmod/Processor$2;

    invoke-direct {v6, p0, v3, v0, v2}, Lcom/android/settings/cyanogenmod/Processor$2;-><init>(Lcom/android/settings/cyanogenmod/Processor;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/settings/cyanogenmod/Processor$2;->start()V

    .line 321
    :cond_1
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_5

    .line 322
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    .end local v0           #file:Ljava/lang/String;
    .end local v3           #nrcpus:I
    :cond_2
    :goto_1
    return v4

    .line 245
    :cond_3
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_4

    .line 246
    sget-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MIN_FILE:Ljava/lang/String;

    goto :goto_0

    .line 247
    :cond_4
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    .line 248
    sget-object v1, Lcom/android/settings/cyanogenmod/Processor;->FREQ_MAX_FILE:Ljava/lang/String;

    goto :goto_0

    .line 323
    .restart local v0       #file:Ljava/lang/String;
    .restart local v3       #nrcpus:I
    :cond_5
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_6

    .line 324
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 326
    :cond_6
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    .line 327
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .end local v0           #file:Ljava/lang/String;
    .end local v3           #nrcpus:I
    :cond_7
    move v4, v5

    .line 332
    goto :goto_1

    :cond_8
    move v4, v5

    .line 335
    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 222
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/Processor;->initFreqCapFiles()V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/Processor;->updateCpufreqValues()V

    .line 224
    return-void
.end method
