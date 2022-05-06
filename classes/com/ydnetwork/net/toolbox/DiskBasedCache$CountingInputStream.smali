.class Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ydnetwork/net/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingInputStream"
.end annotation


# instance fields
.field private bytesRead:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/ydnetwork/net/toolbox/DiskBasedCache$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;)I
    .registers 2

    iget v0, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    return v0
.end method


# virtual methods
.method public read()I
    .registers 3

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget v1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    :cond_d
    return v0
.end method

.method public read([BII)I
    .registers 6

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ydnetwork/net/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I

    :cond_c
    return v0
.end method
