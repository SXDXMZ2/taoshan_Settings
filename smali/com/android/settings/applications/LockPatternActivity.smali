.class public Lcom/android/settings/applications/LockPatternActivity;
.super Landroid/app/Activity;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;
    }
.end annotation


# instance fields
.field mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

.field mCancel:Landroid/widget/Button;

.field mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field mCancelPatternRunnable:Ljava/lang/Runnable;

.field mConfirming:Z

.field mContinue:Landroid/widget/Button;

.field mContinueOnClickListener:Landroid/view/View$OnClickListener;

.field mCreate:Z

.field mItem:Landroid/view/MenuItem;

.field mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field mPatternHash:[B

.field mPatternLockHeader:Landroid/widget/TextView;

.field mRetry:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mRetry:I

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mConfirming:Z

    .line 66
    new-instance v0, Lcom/android/settings/applications/LockPatternActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/LockPatternActivity$1;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Lcom/android/settings/applications/LockPatternActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/LockPatternActivity$2;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 94
    new-instance v0, Lcom/android/settings/applications/LockPatternActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/LockPatternActivity$3;-><init>(Lcom/android/settings/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    .line 217
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/LockPatternActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->switchToAccount()V

    return-void
.end method

.method private resetPatternState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pattern_lock_protected_apps"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, pattern:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "recreate_pattern_lock"

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    .line 201
    iput-object v7, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 202
    if-eqz v0, :cond_1

    .line 203
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternHash:[B

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 207
    iget-object v4, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v3, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0806

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->invalidateOptionsMenu()V

    .line 215
    return-void

    :cond_2
    move v2, v3

    .line 199
    goto :goto_0

    :cond_3
    move v4, v3

    .line 206
    goto :goto_1

    :cond_4
    move v2, v5

    .line 207
    goto :goto_2

    :cond_5
    move v3, v5

    .line 208
    goto :goto_3

    .line 209
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0813

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private switchToAccount()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f0200b6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 171
    return-void
.end method

.method private switchToPattern(Z)V
    .locals 3
    .parameter "reset"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->resetPatternState()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0813

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f02007d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 160
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->clearFocusOnInput()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 163
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    const v0, 0x7f040081

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->setContentView(I)V

    .line 177
    const v0, 0x7f0d0148

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0d014b

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f0d014c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v0, 0x7f0d014a

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    .line 184
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0, p0}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->setOnNotifyAccountResetCb(Lcom/android/settings/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;)V

    .line 185
    const v0, 0x7f0d0149

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 187
    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->resetPatternState()V

    .line 190
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/settings/applications/LockPatternActivity;Lcom/android/settings/applications/LockPatternActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 194
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mCreate:Z

    if-nez v0, :cond_0

    .line 123
    const v0, 0x7f0c015c

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 128
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    .line 130
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onNotifyAccountReset()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 151
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 144
    :goto_0
    return v0

    .line 137
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/applications/LockPatternActivity;->mAccountView:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-direct {p0, v0}, Lcom/android/settings/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 142
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/LockPatternActivity;->switchToAccount()V

    goto :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public patternToHash(Ljava/util/List;)[B
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p1, :cond_0

    .line 304
    const/4 v1, 0x0

    .line 318
    :goto_0
    return-object v1

    .line 307
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 308
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 309
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 310
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 311
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 314
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 315
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 316
    .local v1, hash:[B
    goto :goto_0

    .line 317
    .end local v1           #hash:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 318
    goto :goto_0
.end method
