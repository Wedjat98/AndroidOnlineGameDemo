.class public Lcom/iflytek/cloud/WakeuperResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/cloud/WakeuperResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iflytek/cloud/WakeuperResult$1;

    invoke-direct {v0}, Lcom/iflytek/cloud/WakeuperResult$1;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/WakeuperResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/WakeuperResult;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/WakeuperResult;->b:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/WakeuperResult;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/WakeuperResult;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/WakeuperResult;->b:[B

    if-eqz p1, :cond_e

    iput-object p1, p0, Lcom/iflytek/cloud/WakeuperResult;->a:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/WakeuperResult;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/iflytek/cloud/WakeuperResult;->b:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBuffer()[B
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/WakeuperResult;->b:[B

    return-object v0
.end method

.method public getResultString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/WakeuperResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/WakeuperResult;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
