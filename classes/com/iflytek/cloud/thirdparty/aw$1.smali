.class Lcom/iflytek/cloud/thirdparty/aw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/thirdparty/aw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/thirdparty/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/aw;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/aw;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/aw$1;->a:Lcom/iflytek/cloud/thirdparty/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/aw$1;->a:Lcom/iflytek/cloud/thirdparty/aw;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aw;->dismiss()V

    return-void
.end method
