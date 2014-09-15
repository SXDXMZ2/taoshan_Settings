.class public Lcom/android/settings/hardware/VibratorIntensity;
.super Landroid/preference/DialogPreference;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mOriginalValue:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressThumb:Landroid/graphics/drawable/Drawable;

.field private mRedFilter:Landroid/graphics/LightingColorFilter;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:Landroid/widget/TextView;

.field private mWarning:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-static {}, Lcom/android/settings/hardware/VibratorIntensity;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    const v0, 0x7f0400e6

    invoke-virtual {p0, v0}, Lcom/android/settings/hardware/VibratorIntensity;->setDialogLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/settings/hardware/VibratorIntensity;->intensityToPercent(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/hardware/VibratorIntensity;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private static intensityToPercent(I)I
    .locals 12
    .parameter "value"

    .prologue
    const-wide/high16 v10, 0x4059

    .line 190
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMaxIntensity()I

    move-result v6

    int-to-double v0, v6

    .line 191
    .local v0, maxValue:D
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMinIntensity()I

    move-result v6

    int-to-double v2, v6

    .line 192
    .local v2, minValue:D
    int-to-double v6, p0

    sub-double/2addr v6, v2

    sub-double v8, v0, v2

    div-double v8, v10, v8

    mul-double v4, v6, v8

    .line 194
    .local v4, percent:D
    cmpl-double v6, v4, v10

    if-lez v6, :cond_1

    .line 195
    const-wide/high16 v4, 0x4059

    .line 200
    :cond_0
    :goto_0
    double-to-int v6, v4

    return v6

    .line 196
    :cond_1
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 197
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 146
    :goto_0
    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static percentToIntensity(I)I
    .locals 4
    .parameter "percent"

    .prologue
    .line 204
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMaxIntensity()I

    move-result v0

    .line 205
    .local v0, maxValue:I
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMinIntensity()I

    move-result v1

    .line 206
    .local v1, minValue:I
    sub-int v3, v0, v1

    mul-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 208
    .local v2, value:I
    if-le v2, v0, :cond_1

    .line 209
    move v2, v0

    .line 214
    :cond_0
    :goto_0
    return v2

    .line 210
    :cond_1
    if-ge v2, v1, :cond_0

    .line 211
    move v2, v1

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 151
    invoke-static {}, Lcom/android/settings/hardware/VibratorIntensity;->isSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 155
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getDefaultIntensity()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/hardware/VibratorIntensity;->intensityToPercent(I)I

    move-result v0

    .line 156
    .local v0, defaultValue:I
    const-string v3, "vibrator_intensity"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, percent:I
    invoke-static {v1}, Lcom/android/settings/hardware/VibratorIntensity;->percentToIntensity(I)I

    move-result v3

    invoke-static {v3}, Lorg/cyanogenmod/hardware/VibratorHW;->setIntensity(I)Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 78
    const v7, 0x10202ff

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    .line 79
    const v7, 0x7f0d003e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mValue:Landroid/widget/TextView;

    .line 80
    const v7, 0x7f0d023e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    .line 82
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getWarningThreshold()I

    move-result v6

    .line 83
    .local v6, warningThreshold:I
    if-lez v6, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080285

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Lcom/android/settings/hardware/VibratorIntensity;->intensityToPercent(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, message:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .end local v2           #message:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 92
    .local v5, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v7, v5, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_1

    move-object v1, v5

    .line 93
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 94
    .local v1, ld:Landroid/graphics/drawable/LayerDrawable;
    const v7, 0x102000d

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    .end local v1           #ld:Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    .line 97
    new-instance v7, Landroid/graphics/LightingColorFilter;

    const/high16 v8, -0x100

    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060016

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    .line 101
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getCurIntensity()I

    move-result v7

    iput v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mOriginalValue:I

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 105
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getDefaultIntensity()I

    move-result v7

    invoke-static {v7}, Lcom/android/settings/hardware/VibratorIntensity;->intensityToPercent(I)I

    move-result v0

    .line 106
    .local v0, defaultValue:I
    const-string v7, "vibrator_intensity"

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 108
    .local v3, percent:I
    iget-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 109
    iget-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 110
    return-void

    .line 87
    .end local v0           #defaultValue:I
    .end local v3           #percent:I
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 88
    iget-object v7, p0, Lcom/android/settings/hardware/VibratorIntensity;->mWarning:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 132
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vibrator_intensity"

    iget-object v3, p0, Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 137
    :cond_0
    iget v1, p0, Lcom/android/settings/hardware/VibratorIntensity;->mOriginalValue:I

    invoke-static {v1}, Lorg/cyanogenmod/hardware/VibratorHW;->setIntensity(I)Z

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 66
    const v0, 0x7f0801ce

    new-instance v1, Lcom/android/settings/hardware/VibratorIntensity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/hardware/VibratorIntensity$1;-><init>(Lcom/android/settings/hardware/VibratorIntensity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getWarningThreshold()I

    move-result v1

    .line 164
    .local v1, warningThreshold:I
    if-lez v1, :cond_3

    invoke-static {v1}, Lcom/android/settings/hardware/VibratorIntensity;->intensityToPercent(I)I

    move-result v4

    if-lt p2, v4, :cond_3

    move v0, v2

    .line 167
    .local v0, shouldWarn:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 168
    iget-object v6, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :goto_1
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 170
    :cond_0
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mProgressThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/settings/hardware/VibratorIntensity;->mRedFilter:Landroid/graphics/LightingColorFilter;

    :cond_1
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 174
    :cond_2
    invoke-static {p2}, Lcom/android/settings/hardware/VibratorIntensity;->percentToIntensity(I)I

    move-result v4

    invoke-static {v4}, Lorg/cyanogenmod/hardware/VibratorHW;->setIntensity(I)Z

    .line 175
    iget-object v4, p0, Lcom/android/settings/hardware/VibratorIntensity;->mValue:Landroid/widget/TextView;

    const-string v5, "%d%%"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void

    .end local v0           #shouldWarn:Z
    :cond_3
    move v0, v3

    .line 164
    goto :goto_0

    .restart local v0       #shouldWarn:Z
    :cond_4
    move-object v4, v5

    .line 168
    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 181
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 186
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 187
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/hardware/VibratorIntensity;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 119
    .local v0, d:Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 120
    .local v1, defaultsButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/hardware/VibratorIntensity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/hardware/VibratorIntensity$2;-><init>(Lcom/android/settings/hardware/VibratorIntensity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method
