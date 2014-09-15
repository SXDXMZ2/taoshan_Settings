.class Lcom/android/settings/headsup/HeadsUpSettings$Package;
.super Ljava/lang/Object;
.source "HeadsUpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/headsup/HeadsUpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Package"
.end annotation


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/android/settings/headsup/HeadsUpSettings$Package;->name:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/settings/headsup/HeadsUpSettings$Package;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 258
    :goto_0
    return-object v1

    .line 255
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/settings/headsup/HeadsUpSettings$Package;

    invoke-direct {v1, p0}, Lcom/android/settings/headsup/HeadsUpSettings$Package;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .local v1, item:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    goto :goto_0

    .line 257
    .end local v1           #item:Lcom/android/settings/headsup/HeadsUpSettings$Package;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-object v1, v2

    .line 258
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/headsup/HeadsUpSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
