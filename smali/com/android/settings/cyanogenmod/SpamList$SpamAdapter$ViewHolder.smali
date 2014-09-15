.class Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field dateAndCount:Landroid/widget/TextView;

.field deleteButton:Landroid/view/View;

.field message:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/cyanogenmod/SpamList$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/SpamList$SpamAdapter$ViewHolder;-><init>()V

    return-void
.end method
