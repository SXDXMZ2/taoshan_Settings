.class public Lcom/android/settings/headsup/HeadsUpEnabler;
.super Ljava/lang/Object;
.source "HeadsUpEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/settings/headsup/HeadsUpEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/headsup/HeadsUpEnabler$1;-><init>(Lcom/android/settings/headsup/HeadsUpEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 41
    iput-object p1, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mSwitch:Landroid/widget/Switch;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/headsup/HeadsUpEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/headsup/HeadsUpEnabler;->setSwitchState()V

    return-void
.end method

.method private setSwitchState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "heads_up_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 70
    .local v0, enabled:Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mStateMachineEvent:Z

    .line 71
    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 72
    iput-boolean v2, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mStateMachineEvent:Z

    .line 73
    return-void

    .end local v0           #enabled:Z
    :cond_0
    move v0, v2

    .line 67
    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "heads_up_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/headsup/HeadsUpEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    invoke-direct {p0}, Lcom/android/settings/headsup/HeadsUpEnabler;->setSwitchState()V

    .line 51
    return-void
.end method
