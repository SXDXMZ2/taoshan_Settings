.class Lcom/android/settings/profiles/StreamVolumePreference$1;
.super Ljava/lang/Object;
.source "StreamVolumePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/StreamVolumePreference;->createVolumeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/StreamVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/StreamVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/profiles/StreamVolumePreference$1;->this$0:Lcom/android/settings/profiles/StreamVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 135
    iget-object v3, p0, Lcom/android/settings/profiles/StreamVolumePreference$1;->this$0:Lcom/android/settings/profiles/StreamVolumePreference;

    #getter for: Lcom/android/settings/profiles/StreamVolumePreference;->mBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/android/settings/profiles/StreamVolumePreference;->access$000(Lcom/android/settings/profiles/StreamVolumePreference;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 136
    .local v2, value:I
    iget-object v3, p0, Lcom/android/settings/profiles/StreamVolumePreference$1;->this$0:Lcom/android/settings/profiles/StreamVolumePreference;

    #getter for: Lcom/android/settings/profiles/StreamVolumePreference;->mStreamItem:Lcom/android/settings/profiles/ProfileConfig$StreamItem;
    invoke-static {v3}, Lcom/android/settings/profiles/StreamVolumePreference;->access$100(Lcom/android/settings/profiles/StreamVolumePreference;)Lcom/android/settings/profiles/ProfileConfig$StreamItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/profiles/ProfileConfig$StreamItem;->mSettings:Landroid/app/StreamSettings;

    invoke-virtual {v3, v2}, Landroid/app/StreamSettings;->setValue(I)V

    .line 137
    move v0, v2

    .line 138
    .local v0, denominator:I
    iget-object v3, p0, Lcom/android/settings/profiles/StreamVolumePreference$1;->this$0:Lcom/android/settings/profiles/StreamVolumePreference;

    #getter for: Lcom/android/settings/profiles/StreamVolumePreference;->mBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/android/settings/profiles/StreamVolumePreference;->access$000(Lcom/android/settings/profiles/StreamVolumePreference;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 139
    .local v1, numerator:I
    iget-object v3, p0, Lcom/android/settings/profiles/StreamVolumePreference$1;->this$0:Lcom/android/settings/profiles/StreamVolumePreference;

    iget-object v4, p0, Lcom/android/settings/profiles/StreamVolumePreference$1;->this$0:Lcom/android/settings/profiles/StreamVolumePreference;

    invoke-virtual {v4}, Lcom/android/settings/profiles/StreamVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800ea

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/profiles/StreamVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method
