.class public final enum Lcom/google/protobuf/f$f$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum aR:Lcom/google/protobuf/f$f$b;

.field public static final enum aS:Lcom/google/protobuf/f$f$b;

.field public static final enum aT:Lcom/google/protobuf/f$f$b;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2422
    new-instance v0, Lcom/google/protobuf/f$f$b;

    const-string v1, "LABEL_OPTIONAL"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protobuf/f$f$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/f$f$b;->aR:Lcom/google/protobuf/f$f$b;

    .line 2423
    new-instance v0, Lcom/google/protobuf/f$f$b;

    const-string v1, "LABEL_REQUIRED"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protobuf/f$f$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/f$f$b;->aS:Lcom/google/protobuf/f$f$b;

    .line 2424
    new-instance v0, Lcom/google/protobuf/f$f$b;

    const-string v1, "LABEL_REPEATED"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protobuf/f$f$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/f$f$b;->aT:Lcom/google/protobuf/f$f$b;

    .line 2420
    new-array v0, v5, [Lcom/google/protobuf/f$f$b;

    sget-object v1, Lcom/google/protobuf/f$f$b;->aR:Lcom/google/protobuf/f$f$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/f$f$b;->aS:Lcom/google/protobuf/f$f$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/f$f$b;->aT:Lcom/google/protobuf/f$f$b;

    aput-object v1, v0, v3

    .line 2444
    new-instance v0, Lcom/google/protobuf/h;

    invoke-direct {v0}, Lcom/google/protobuf/h;-><init>()V

    .line 2464
    new-array v0, v5, [Lcom/google/protobuf/f$f$b;

    sget-object v1, Lcom/google/protobuf/f$f$b;->aR:Lcom/google/protobuf/f$f$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/f$f$b;->aS:Lcom/google/protobuf/f$f$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/f$f$b;->aT:Lcom/google/protobuf/f$f$b;

    aput-object v1, v0, v3

    .line 2483
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    .line 2484
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .prologue
    .line 2477
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2478
    iput p4, p0, Lcom/google/protobuf/f$f$b;->value:I

    .line 2480
    return-void
.end method

.method public static M(I)Lcom/google/protobuf/f$f$b;
    .registers 2

    .prologue
    .line 2431
    packed-switch p0, :pswitch_data_e

    .line 2435
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2432
    :pswitch_5
    sget-object v0, Lcom/google/protobuf/f$f$b;->aR:Lcom/google/protobuf/f$f$b;

    goto :goto_4

    .line 2433
    :pswitch_8
    sget-object v0, Lcom/google/protobuf/f$f$b;->aS:Lcom/google/protobuf/f$f$b;

    goto :goto_4

    .line 2434
    :pswitch_b
    sget-object v0, Lcom/google/protobuf/f$f$b;->aT:Lcom/google/protobuf/f$f$b;

    goto :goto_4

    .line 2431
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 2428
    iget v0, p0, Lcom/google/protobuf/f$f$b;->value:I

    return v0
.end method
