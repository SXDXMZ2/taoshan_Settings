.class Lcom/android/settings/hardware/VibratorIntensity$2;
.super Ljava/lang/Object;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/hardware/VibratorIntensity;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/hardware/VibratorIntensity;


# direct methods
.method constructor <init>(Lcom/android/settings/hardware/VibratorIntensity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/hardware/VibratorIntensity$2;->this$0:Lcom/android/settings/hardware/VibratorIntensity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/hardware/VibratorIntensity$2;->this$0:Lcom/android/settings/hardware/VibratorIntensity;

    #getter for: Lcom/android/settings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings/hardware/VibratorIntensity;->access$100(Lcom/android/settings/hardware/VibratorIntensity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getDefaultIntensity()I

    move-result v1

    #calls: Lcom/android/settings/hardware/VibratorIntensity;->intensityToPercent(I)I
    invoke-static {v1}, Lcom/android/settings/hardware/VibratorIntensity;->access$000(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 124
    return-void
.end method
