.class public Lcom/android/settings/cyanogenmod/NavRing;
.super Landroid/app/Fragment;
.source "NavRing.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.implements Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;
    }
.end annotation


# instance fields
.field private mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

.field private mContainer:Landroid/view/ViewGroup;

.field private mEndPosOffset:I

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private mIsLandscape:Z

.field private mIsScreenLarge:Z

.field private mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

.field private mStartPosOffset:I

.field private mTargetActivities:[Ljava/lang/String;

.field private mTargetIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetIndex:I

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/NavRing;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/NavRing;->updateDrawables()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/NavRing;)Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/NavRing;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/NavRing;->onTargetChange(Ljava/lang/String;)V

    return-void
.end method

.method private createActionList()V
    .locals 4

    .prologue
    .line 126
    new-instance v1, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;-><init>(Lcom/android/settings/cyanogenmod/NavRing;Lcom/android/settings/cyanogenmod/NavRing$1;)V

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    .line 127
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "none"

    const v3, 0x7f080300

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/cm/NavigationRingHelpers;->isAssistantAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "assist"

    const v3, 0x7f080307

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/cm/NavigationRingHelpers;->isTorchAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "torch"

    const v3, 0x7f080306

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "screenshot"

    const v3, 0x7f080301

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "imeSwitcher"

    const v3, 0x7f0802fe

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "ringSilent"

    const v3, 0x7f080303

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 141
    .local v0, vibrator:Landroid/os/Vibrator;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "ringVibrate"

    const v3, 0x7f080302

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "ringVibrateSilent"

    const v3, 0x7f080304

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "killTask"

    const v3, 0x7f0802ff

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "standby"

    const v3, 0x7f080305

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    const-string v2, "app"

    const v3, 0x7f080ac2

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->addAction(Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method private onTargetChange(Ljava/lang/String;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 267
    const-string v2, "app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, label:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x108001d

    invoke-static {v2, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 271
    .local v0, iconResource:Landroid/content/Intent$ShortcutIconResource;
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/NavRing;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    new-array v3, v4, [Ljava/lang/String;

    aput-object v1, v3, v5

    new-array v4, v4, [Landroid/content/Intent$ShortcutIconResource;

    aput-object v0, v4, v5

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->pickShortcut([Ljava/lang/String;[Landroid/content/Intent$ShortcutIconResource;I)V

    .line 279
    .end local v0           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v1           #label:Ljava/lang/String;
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetActivities:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetIndex:I

    aput-object p1, v2, v3

    .line 277
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/NavRing;->saveAll()V

    goto :goto_0
.end method

.method private resetAll()V
    .locals 4

    .prologue
    .line 219
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0802c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0802fc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801f9

    new-instance v3, Lcom/android/settings/cyanogenmod/NavRing$1;

    invoke-direct {v3, p0}, Lcom/android/settings/cyanogenmod/NavRing$1;-><init>(Lcom/android/settings/cyanogenmod/NavRing;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080519

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 236
    .local v0, d:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 237
    return-void
.end method

.method private saveAll()V
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 241
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetActivities:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 242
    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetActivities:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/NavRing;->setDrawables()V

    .line 247
    return-void
.end method

.method private setDrawables()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v3, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, context:Landroid/content/Context;
    iget-boolean v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mIsLandscape:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mIsScreenLarge:Z

    if-eqz v4, :cond_1

    .line 158
    :cond_0
    iput v5, p0, Lcom/android/settings/cyanogenmod/NavRing;->mStartPosOffset:I

    .line 159
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mEndPosOffset:I

    .line 166
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mStartPosOffset:I

    if-ge v2, v4, :cond_2

    .line 167
    invoke-static {v0, v6}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    .end local v2           #i:I
    :cond_1
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mStartPosOffset:I

    .line 162
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mEndPosOffset:I

    goto :goto_0

    .line 171
    .restart local v2       #i:I
    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetActivities:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 172
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetActivities:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v0, v4}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v1

    .line 175
    .local v1, drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 176
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 180
    .end local v1           #drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mEndPosOffset:I

    if-ge v2, v4, :cond_4

    .line 181
    invoke-static {v0, v6}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 184
    :cond_4
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    .line 185
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-static {v0, v4}, Lcom/android/internal/util/cm/NavigationRingHelpers;->swapSearchIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 186
    return-void
.end method

.method private updateDrawables()V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTargetActions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetActivities:[Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/NavRing;->setDrawables()V

    .line 264
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0133

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 121
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/NavRing;->updateDrawables()V

    .line 123
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 200
    const/4 v0, 0x1

    const v1, 0x7f0800db

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 205
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/NavRing;->mContainer:Landroid/view/ViewGroup;

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/NavRing;->setHasOptionsMenu(Z)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/NavRing;->createActionList()V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mIsScreenLarge:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mIsLandscape:Z

    .line 112
    new-instance v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;-><init>(Landroid/app/Activity;Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    .line 114
    const v0, 0x7f040072

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 108
    goto :goto_0

    :cond_1
    move v1, v2

    .line 109
    goto :goto_1
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 305
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 315
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 211
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/NavRing;->resetAll()V

    .line 212
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 310
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mIsScreenLarge:Z

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 196
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 6
    .parameter "v"
    .parameter "target"

    .prologue
    .line 283
    iget v3, p0, Lcom/android/settings/cyanogenmod/NavRing;->mStartPosOffset:I

    sub-int v3, p2, v3

    iput v3, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetIndex:I

    .line 285
    new-instance v1, Lcom/android/settings/cyanogenmod/NavRing$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/NavRing$2;-><init>(Lcom/android/settings/cyanogenmod/NavRing;)V

    .line 293
    .local v1, l:Landroid/content/DialogInterface$OnClickListener;
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetActivities:[Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->getActionIndex(Ljava/lang/String;)I

    move-result v2

    .line 294
    .local v2, selection:I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080308

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/NavRing;->mActions:Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;

    invoke-virtual {v4}, Lcom/android/settings/cyanogenmod/NavRing$ActionHolder;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 299
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 300
    return-void
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "isApplication"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetActivities:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/cyanogenmod/NavRing;->mTargetIndex:I

    aput-object p1, v0, v1

    .line 252
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/NavRing;->saveAll()V

    .line 253
    return-void
.end method
