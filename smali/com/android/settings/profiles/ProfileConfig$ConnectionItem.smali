.class Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/ProfileConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionItem"
.end annotation


# instance fields
.field mCheckbox:Lcom/android/settings/profiles/ProfileConnectionPreference;

.field mChoices:I

.field mConnectionId:I

.field mLabel:Ljava/lang/String;

.field mSettings:Landroid/app/ConnectionSettings;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "connectionId"
    .parameter "label"

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput p1, p0, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    .line 473
    const v0, 0x7f0b0072

    iput v0, p0, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mChoices:I

    .line 474
    iput-object p2, p0, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "connectionId"
    .parameter "label"
    .parameter "choices"

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput p1, p0, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    .line 479
    iput-object p2, p0, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    .line 480
    iput p3, p0, Lcom/android/settings/profiles/ProfileConfig$ConnectionItem;->mChoices:I

    .line 481
    return-void
.end method
