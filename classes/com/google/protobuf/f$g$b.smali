.class public final enum Lcom/google/protobuf/f$g$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum bx:Lcom/google/protobuf/f$g$b;

.field private static enum by:Lcom/google/protobuf/f$g$b;

.field private static enum bz:Lcom/google/protobuf/f$g$b;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5946
    new-instance v0, Lcom/google/protobuf/f$g$b;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protobuf/f$g$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/f$g$b;->bx:Lcom/google/protobuf/f$g$b;

    .line 5947
    new-instance v0, Lcom/google/protobuf/f$g$b;

    const-string v1, "CORD"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protobuf/f$g$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/f$g$b;->by:Lcom/google/protobuf/f$g$b;

    .line 5948
    new-instance v0, Lcom/google/protobuf/f$g$b;

    const-string v1, "STRING_PIECE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/protobuf/f$g$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/f$g$b;->bz:Lcom/google/protobuf/f$g$b;

    .line 5944
    new-array v0, v5, [Lcom/google/protobuf/f$g$b;

    sget-object v1, Lcom/google/protobuf/f$g$b;->bx:Lcom/google/protobuf/f$g$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/f$g$b;->by:Lcom/google/protobuf/f$g$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protobuf/f$g$b;->bz:Lcom/google/protobuf/f$g$b;

    aput-object v1, v0, v4

    .line 5968
    new-instance v0, Lcom/google/protobuf/j;

    invoke-direct {v0}, Lcom/google/protobuf/j;-><init>()V

    .line 5988
    new-array v0, v5, [Lcom/google/protobuf/f$g$b;

    sget-object v1, Lcom/google/protobuf/f$g$b;->bx:Lcom/google/protobuf/f$g$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/f$g$b;->by:Lcom/google/protobuf/f$g$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protobuf/f$g$b;->bz:Lcom/google/protobuf/f$g$b;

    aput-object v1, v0, v4

    .line 6007
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    .line 6008
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .prologue
    .line 6001
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6002
    iput p4, p0, Lcom/google/protobuf/f$g$b;->value:I

    .line 6004
    return-void
.end method

.method public static O(I)Lcom/google/protobuf/f$g$b;
    .registers 2

    .prologue
    .line 5955
    packed-switch p0, :pswitch_data_e

    .line 5959
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 5956
    :pswitch_5
    sget-object v0, Lcom/google/protobuf/f$g$b;->bx:Lcom/google/protobuf/f$g$b;

    goto :goto_4

    .line 5957
    :pswitch_8
    sget-object v0, Lcom/google/protobuf/f$g$b;->by:Lcom/google/protobuf/f$g$b;

    goto :goto_4

    .line 5958
    :pswitch_b
    sget-object v0, Lcom/google/protobuf/f$g$b;->bz:Lcom/google/protobuf/f$g$b;

    goto :goto_4

    .line 5955
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 5952
    iget v0, p0, Lcom/google/protobuf/f$g$b;->value:I

    return v0
.end method
