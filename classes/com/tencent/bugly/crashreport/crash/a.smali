.class public final Lcom/tencent/bugly/crashreport/crash/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/bugly/crashreport/crash/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    .line 15
    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/a;->c:Ljava/lang/String;

    .line 17
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    .line 18
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    .line 19
    iput v1, p0, Lcom/tencent/bugly/crashreport/crash/a;->f:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 13
    check-cast p1, Lcom/tencent/bugly/crashreport/crash/a;

    if-eqz p1, :cond_17

    iget-wide v0, p0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    iget-wide v2, p1, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_17

    cmp-long v0, v0, v4

    if-gez v0, :cond_15

    const/4 v0, -0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14

    :cond_17
    const/4 v0, 0x1

    goto :goto_14
.end method
