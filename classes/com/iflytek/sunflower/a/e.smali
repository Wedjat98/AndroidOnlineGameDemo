.class public Lcom/iflytek/sunflower/a/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/sunflower/a/e;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/iflytek/sunflower/a/e;->b:J

    return-void
.end method
