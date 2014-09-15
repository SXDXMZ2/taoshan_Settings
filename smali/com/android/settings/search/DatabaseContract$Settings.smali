.class public Lcom/android/settings/search/DatabaseContract$Settings;
.super Ljava/lang/Object;
.source "DatabaseContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/DatabaseContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field public static ACTION_FRAGMENT:Ljava/lang/String;

.field public static ACTION_HEADER:Ljava/lang/String;

.field public static ACTION_ICON:Ljava/lang/String;

.field public static ACTION_KEY:Ljava/lang/String;

.field public static ACTION_LEVEL:Ljava/lang/String;

.field public static ACTION_PARENT_TITLE:Ljava/lang/String;

.field public static ACTION_TITLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "title"

    sput-object v0, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_TITLE:Ljava/lang/String;

    .line 33
    const-string v0, "header"

    sput-object v0, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_HEADER:Ljava/lang/String;

    .line 35
    const-string v0, "icon"

    sput-object v0, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_ICON:Ljava/lang/String;

    .line 37
    const-string v0, "level"

    sput-object v0, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_LEVEL:Ljava/lang/String;

    .line 39
    const-string v0, "fragment"

    sput-object v0, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_FRAGMENT:Ljava/lang/String;

    .line 41
    const-string v0, "parent_title"

    sput-object v0, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_PARENT_TITLE:Ljava/lang/String;

    .line 43
    const-string v0, "key"

    sput-object v0, Lcom/android/settings/search/DatabaseContract$Settings;->ACTION_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
