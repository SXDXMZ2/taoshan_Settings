.class public Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;
.super Ljava/lang/Object;
.source "QuickSettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/quicksettings/QuickSettingsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileInfo"
.end annotation


# instance fields
.field private mIcon:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mTitleResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "titleResId"
    .parameter "icon"

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;->mId:Ljava/lang/String;

    .line 364
    iput p2, p0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;->mTitleResId:I

    .line 365
    iput-object p3, p0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;->mIcon:Ljava/lang/String;

    .line 366
    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/android/settings/quicksettings/QuickSettingsUtil$TileInfo;->mTitleResId:I

    return v0
.end method
