.class final Lcom/iflytek/cloud/EvaluatorResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/EvaluatorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/iflytek/cloud/EvaluatorResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/cloud/EvaluatorResult;
    .registers 4

    new-instance v0, Lcom/iflytek/cloud/EvaluatorResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/iflytek/cloud/EvaluatorResult;-><init>(Landroid/os/Parcel;Lcom/iflytek/cloud/EvaluatorResult$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/cloud/EvaluatorResult;
    .registers 3

    new-array v0, p1, [Lcom/iflytek/cloud/EvaluatorResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/EvaluatorResult$1;->a(Landroid/os/Parcel;)Lcom/iflytek/cloud/EvaluatorResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/EvaluatorResult$1;->a(I)[Lcom/iflytek/cloud/EvaluatorResult;

    move-result-object v0

    return-object v0
.end method
