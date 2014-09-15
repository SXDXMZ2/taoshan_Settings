.class public Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;
.super Ljava/lang/Object;
.source "SettingsSearchFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SettingsSearchFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchInfo"
.end annotation


# instance fields
.field public final fragment:Ljava/lang/String;

.field public final header:Landroid/preference/PreferenceActivity$Header;

.field public final iconRes:I

.field public final key:Ljava/lang/String;

.field public final level:I

.field private final mMatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalizedTitle:Ljava/lang/String;

.field private final mPendingMatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SettingsSearchFilterAdapter$MatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final parentTitle:I

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity$Header;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "level"
    .parameter "fragment"
    .parameter "title"
    .parameter "iconRes"
    .parameter "parentTitle"
    .parameter "key"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mMatches:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mPendingMatches:Ljava/util/ArrayList;

    .line 137
    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->header:Landroid/preference/PreferenceActivity$Header;

    .line 138
    iput p2, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->level:I

    .line 139
    iput-object p3, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->fragment:Ljava/lang/String;

    .line 140
    iput-object p4, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->title:Ljava/lang/String;

    .line 141
    iput p5, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->iconRes:I

    .line 142
    iput p6, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->parentTitle:I

    .line 143
    iput-object p7, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->key:Ljava/lang/String;

    .line 145
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/search/SettingsSearchFilterAdapter;->removeNonAlphaNumeric(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchFilterAdapter;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mNormalizedTitle:Ljava/lang/String;

    .line 146
    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mMatches:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mNormalizedTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchFilterAdapter$SearchInfo;->mPendingMatches:Ljava/util/ArrayList;

    return-object v0
.end method
