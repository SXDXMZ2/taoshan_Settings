.class public Lcom/android/settings/search/SearchHighlightAdapterWrapper;
.super Ljava/lang/Object;
.source "SearchHighlightAdapterWrapper.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mHighlightColor:I

.field private mHighlightDone:Z

.field private mHighlightedPosition:I

.field private mHighlightedView:Landroid/view/View;

.field private mInitialDelay:I


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;III)V
    .locals 1
    .parameter "adapter"
    .parameter "initialDelay"
    .parameter "duration"
    .parameter "highlightColor"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedPosition:I

    .line 46
    new-instance v0, Lcom/android/settings/search/SearchHighlightAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SearchHighlightAdapterWrapper$1;-><init>(Lcom/android/settings/search/SearchHighlightAdapterWrapper;)V

    iput-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 61
    iput p2, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mInitialDelay:I

    .line 62
    iput p3, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mDuration:I

    .line 63
    iput p4, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightColor:I

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/search/SearchHighlightAdapterWrapper;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->addHighlight(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/search/SearchHighlightAdapterWrapper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/search/SearchHighlightAdapterWrapper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->removeHighlight()V

    return-void
.end method

.method private addHighlight(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 155
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 156
    .local v1, d:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    const-string v2, "alpha"

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 161
    .local v0, bgAnim:Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/android/settings/search/SearchHighlightAdapterWrapper$2;

    invoke-direct {v2, p0}, Lcom/android/settings/search/SearchHighlightAdapterWrapper$2;-><init>(Lcom/android/settings/search/SearchHighlightAdapterWrapper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    iget v2, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 168
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 169
    return-void

    .line 160
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private removeHighlight()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 177
    .local v0, d:Landroid/graphics/drawable/ColorDrawable;
    if-eqz v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    :cond_1
    iput-object v3, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 101
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedView:Landroid/view/View;

    if-ne p2, v2, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->removeHighlight()V

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedPosition:I

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightDone:Z

    if-nez v2, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->removeHighlight()V

    .line 112
    iget-object v2, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, msg:Landroid/os/Message;
    iput-object v1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedView:Landroid/view/View;

    .line 114
    iget-object v2, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mInitialDelay:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 137
    return-void
.end method

.method public setHighlightedPosition(I)V
    .locals 1
    .parameter "highlightedPosition"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedPosition:I

    if-eq v0, p1, :cond_0

    .line 68
    iput p1, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightedPosition:I

    .line 69
    invoke-direct {p0}, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->removeHighlight()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mHighlightDone:Z

    .line 72
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/search/SearchHighlightAdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 142
    return-void
.end method
