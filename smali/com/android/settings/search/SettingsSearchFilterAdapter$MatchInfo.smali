.class Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;
.super Ljava/lang/Object;
.source "SettingsSearchFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SettingsSearchFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchInfo"
.end annotation


# instance fields
.field end:I

.field start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;->end:I

    iput v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;->start:I

    .line 117
    return-void
.end method
