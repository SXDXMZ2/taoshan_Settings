.class public Lcom/android/settings/search/SettingsAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "SettingsAutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public mClearButton:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->create()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->create()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->create()V

    .line 42
    return-void
.end method

.method private create()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SettingsAutoCompleteTextView;->mClearButton:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v0, p0, Lcom/android/settings/search/SettingsAutoCompleteTextView;->mClearButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 53
    const v0, 0x2000003

    invoke-virtual {p0, v0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->setImeOptions(I)V

    .line 56
    invoke-virtual {p0, p0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    return-void
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 61
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 62
    .local v1, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 64
    .local v0, width:I
    sparse-switch v1, :sswitch_data_0

    .line 72
    :goto_0
    const/high16 v1, 0x4000

    .line 73
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/AutoCompleteTextView;->onMeasure(II)V

    .line 74
    return-void

    .line 66
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 67
    goto :goto_0

    .line 69
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->getPreferredWidth()I

    move-result v0

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v3

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/search/SettingsAutoCompleteTextView;->mClearButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 89
    .local v0, clearButtonStart:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 91
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/settings/search/SettingsAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
