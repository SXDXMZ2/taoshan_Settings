.class Landroid/support/v4/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    .line 21
    new-array v0, v1, [J

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    .line 22
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .locals 5
    .parameter "array"
    .parameter "size"
    .parameter "value"

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, lo:I
    add-int/lit8 v0, p1, -0x1

    .line 49
    .local v0, hi:I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 50
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 51
    .local v2, mid:I
    aget v3, p0, v2

    .line 53
    .local v3, midVal:I
    if-ge v3, p2, :cond_0

    .line 54
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    if-le v3, p2, :cond_2

    .line 56
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 61
    .end local v2           #mid:I
    .end local v3           #midVal:I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 41
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 33
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 34
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 35
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 37
    .end local p0
    :cond_0
    return p0

    .line 33
    .restart local p0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 25
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method
