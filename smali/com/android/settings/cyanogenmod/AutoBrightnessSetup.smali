.class public Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;
.super Lcom/android/internal/app/AlertActivity;
.source "AutoBrightnessSetup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

.field private mSensitivity:Landroid/widget/Spinner;

.field private mTwilightAdjustment:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->showCustomizeDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method private showCustomizeDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    .line 165
    if-eqz p1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0, p1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 139
    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 157
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 145
    .local v1, selection:I
    if-ltz v1, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 148
    .local v3, sensitivityValues:[I
    const v4, 0x3c23d70a

    aget v5, v3, v1

    int-to-float v5, v5

    mul-float v2, v4, v5

    .line 150
    .local v2, sensitivity:F
    const-string v4, "auto_brightness_responsiveness"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 154
    .end local v2           #sensitivity:F
    .end local v3           #sensitivityValues:[I
    :cond_1
    const-string v5, "auto_brightness_twilight_adjustment"

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mTwilightAdjustment:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04003d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 51
    .local v3, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 52
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v4, 0x7f020051

    iput v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 53
    const v4, 0x7f0801c5

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 54
    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 55
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 56
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 57
    const v4, 0x7f0801cc

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 58
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 60
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->setupAlert()V

    .line 64
    const v4, 0x7f0d00b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mTwilightAdjustment:Landroid/widget/CheckBox;

    .line 65
    const v4, 0x7f0d00ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    .line 67
    const v4, 0x7f0c008b

    const v5, 0x1090008

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 70
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 71
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 73
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 74
    .local v1, adjustButton:Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup$1;

    invoke-direct {v4, p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup$1;-><init>(Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->dismiss()V

    .line 88
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v1, "AutoBrightnessSetup:CustomizeDialogShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "AutoBrightnessSetup:CustomizeDialogState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 131
    .local v0, dialogState:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->showCustomizeDialog(Landroid/os/Bundle;)V

    .line 133
    .end local v0           #dialogState:Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    const-string v2, "AutoBrightnessSetup:SensitivitySelection"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mTwilightAdjustment:Landroid/widget/CheckBox;

    const-string v2, "AutoBrightnessSetup:TwilightAdjustment"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 117
    .local v0, customizeDialogShown:Z
    :goto_0
    const-string v1, "AutoBrightnessSetup:CustomizeDialogShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    if-eqz v0, :cond_0

    .line 119
    const-string v1, "AutoBrightnessSetup:CustomizeDialogState"

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mCustomizeDialog:Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/AutoBrightnessCustomizeDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 121
    :cond_0
    const-string v1, "AutoBrightnessSetup:SensitivitySelection"

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v1, "AutoBrightnessSetup:TwilightAdjustment"

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mTwilightAdjustment:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    return-void

    .line 116
    .end local v0           #customizeDialogShown:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 95
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "auto_brightness_responsiveness"

    const/high16 v7, 0x3f80

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 97
    .local v0, currentSensitivity:F
    const/high16 v6, 0x42c8

    mul-float/2addr v6, v0

    float-to-int v1, v6

    .line 98
    .local v1, currentSensitivityInt:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 101
    .local v4, sensitivityValues:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 102
    aget v6, v4, v2

    if-ne v6, v1, :cond_2

    .line 103
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 108
    :cond_0
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/AutoBrightnessSetup;->mTwilightAdjustment:Landroid/widget/CheckBox;

    const-string v7, "auto_brightness_twilight_adjustment"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    return-void

    .line 101
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
