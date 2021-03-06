.class public Lcom/ydnetwork/net/DefaultRetryPolicy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ydnetwork/net/RetryPolicy;


# static fields
.field public static final DEFAULT_BACKOFF_MULT:F = 1.0f

.field public static final DEFAULT_MAX_RETRIES:I = 0x0

.field public static final DEFAULT_TIMEOUT_MS:I = 0x9c4


# instance fields
.field private final mBackoffMultiplier:F

.field private mCurrentRetryCount:I

.field private mCurrentTimeoutMs:I

.field private final mMaxNumRetries:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x9c4

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/ydnetwork/net/DefaultRetryPolicy;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    iput p2, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mMaxNumRetries:I

    iput p3, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mBackoffMultiplier:F

    return-void
.end method


# virtual methods
.method public getBackoffMultiplier()F
    .registers 2

    iget v0, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mBackoffMultiplier:F

    return v0
.end method

.method public getCurrentRetryCount()I
    .registers 2

    iget v0, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mCurrentRetryCount:I

    return v0
.end method

.method public getCurrentTimeout()I
    .registers 2

    iget v0, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    return v0
.end method

.method protected hasAttemptRemaining()Z
    .registers 3

    iget v0, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mCurrentRetryCount:I

    iget v1, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mMaxNumRetries:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public retry(Lcom/ydnetwork/net/VolleyError;)V
    .registers 5

    iget v0, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mCurrentRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mCurrentRetryCount:I

    iget v0, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mBackoffMultiplier:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ydnetwork/net/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    invoke-virtual {p0}, Lcom/ydnetwork/net/DefaultRetryPolicy;->hasAttemptRemaining()Z

    move-result v0

    if-nez v0, :cond_1a

    throw p1

    :cond_1a
    return-void
.end method
