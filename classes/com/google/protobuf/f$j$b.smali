.class public final enum Lcom/google/protobuf/f$j$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum cb:Lcom/google/protobuf/f$j$b;

.field private static enum cc:Lcom/google/protobuf/f$j$b;

.field private static enum cd:Lcom/google/protobuf/f$j$b;


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

    .line 4826
    new-instance v0, Lcom/google/protobuf/f$j$b;

    const-string v1, "SPEED"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protobuf/f$j$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/f$j$b;->cb:Lcom/google/protobuf/f$j$b;

    .line 4827
    new-instance v0, Lcom/google/protobuf/f$j$b;

    const-string v1, "CODE_SIZE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protobuf/f$j$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/f$j$b;->cc:Lcom/google/protobuf/f$j$b;

    .line 4828
    new-instance v0, Lcom/google/protobuf/f$j$b;

    const-string v1, "LITE_RUNTIME"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protobuf/f$j$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/f$j$b;->cd:Lcom/google/protobuf/f$j$b;

    .line 4824
    new-array v0, v5, [Lcom/google/protobuf/f$j$b;

    sget-object v1, Lcom/google/protobuf/f$j$b;->cb:Lcom/google/protobuf/f$j$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/f$j$b;->cc:Lcom/google/protobuf/f$j$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/f$j$b;->cd:Lcom/google/protobuf/f$j$b;

    aput-object v1, v0, v3

    .line 4848
    new-instance v0, Lcom/google/protobuf/k;

    invoke-direct {v0}, Lcom/google/protobuf/k;-><init>()V

    .line 4868
    new-array v0, v5, [Lcom/google/protobuf/f$j$b;

    sget-object v1, Lcom/google/protobuf/f$j$b;->cb:Lcom/google/protobuf/f$j$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/f$j$b;->cc:Lcom/google/protobuf/f$j$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/f$j$b;->cd:Lcom/google/protobuf/f$j$b;

    aput-object v1, v0, v3

    .line 4887
    invoke-static {}, Lcom/google/protobuf/f;->J()Lcom/google/protobuf/l$g;

    .line 4888
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .prologue
    .line 4881
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4882
    iput p4, p0, Lcom/google/protobuf/f$j$b;->value:I

    .line 4884
    return-void
.end method

.method public static S(I)Lcom/google/protobuf/f$j$b;
    .registers 2

    .prologue
    .line 4835
    packed-switch p0, :pswitch_data_e

    .line 4839
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 4836
    :pswitch_5
    sget-object v0, Lcom/google/protobuf/f$j$b;->cb:Lcom/google/protobuf/f$j$b;

    goto :goto_4

    .line 4837
    :pswitch_8
    sget-object v0, Lcom/google/protobuf/f$j$b;->cc:Lcom/google/protobuf/f$j$b;

    goto :goto_4

    .line 4838
    :pswitch_b
    sget-object v0, Lcom/google/protobuf/f$j$b;->cd:Lcom/google/protobuf/f$j$b;

    goto :goto_4

    .line 4835
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
    .line 4832
    iget v0, p0, Lcom/google/protobuf/f$j$b;->value:I

    return v0
.end method
