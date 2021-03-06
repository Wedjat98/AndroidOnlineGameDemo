.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:F = 0.25f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    .line 39
    const/16 v0, 0x6b

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_3c2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3d2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_3e2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3f2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_402

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_412

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_422

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_432

    aput-object v1, v0, v4

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_442

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_452

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_462

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_472

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_482

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_492

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_4a2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_4b2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_4c2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_4d2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_4e2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_4f2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_502

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_512

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_522

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_532

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_542

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_552

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_562

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_572

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_582

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_592

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_5a2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_5b2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_5c2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_5d2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_5e2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_5f2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_602

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_612

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_622

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_632

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [I

    fill-array-data v2, :array_642

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [I

    fill-array-data v2, :array_652

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [I

    fill-array-data v2, :array_662

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [I

    fill-array-data v2, :array_672

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [I

    fill-array-data v2, :array_682

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [I

    fill-array-data v2, :array_692

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [I

    fill-array-data v2, :array_6a2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [I

    fill-array-data v2, :array_6b2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [I

    fill-array-data v2, :array_6c2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [I

    fill-array-data v2, :array_6d2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [I

    fill-array-data v2, :array_6e2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [I

    fill-array-data v2, :array_6f2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [I

    fill-array-data v2, :array_702

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [I

    fill-array-data v2, :array_712

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [I

    fill-array-data v2, :array_722

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [I

    fill-array-data v2, :array_732

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [I

    fill-array-data v2, :array_742

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [I

    fill-array-data v2, :array_752

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [I

    fill-array-data v2, :array_762

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [I

    fill-array-data v2, :array_772

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [I

    fill-array-data v2, :array_782

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [I

    fill-array-data v2, :array_792

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [I

    fill-array-data v2, :array_7a2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [I

    fill-array-data v2, :array_7b2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [I

    fill-array-data v2, :array_7c2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [I

    fill-array-data v2, :array_7d2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [I

    fill-array-data v2, :array_7e2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [I

    fill-array-data v2, :array_7f2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [I

    fill-array-data v2, :array_802

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [I

    fill-array-data v2, :array_812

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [I

    fill-array-data v2, :array_822

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [I

    fill-array-data v2, :array_832

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [I

    fill-array-data v2, :array_842

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [I

    fill-array-data v2, :array_852

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [I

    fill-array-data v2, :array_862

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [I

    fill-array-data v2, :array_872

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [I

    fill-array-data v2, :array_882

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [I

    fill-array-data v2, :array_892

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [I

    fill-array-data v2, :array_8a2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [I

    fill-array-data v2, :array_8b2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [I

    fill-array-data v2, :array_8c2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [I

    fill-array-data v2, :array_8d2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [I

    fill-array-data v2, :array_8e2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [I

    fill-array-data v2, :array_8f2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [I

    fill-array-data v2, :array_902

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [I

    fill-array-data v2, :array_912

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [I

    fill-array-data v2, :array_922

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [I

    fill-array-data v2, :array_932

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [I

    fill-array-data v2, :array_942

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [I

    fill-array-data v2, :array_952

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [I

    fill-array-data v2, :array_962

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [I

    fill-array-data v2, :array_972

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [I

    fill-array-data v2, :array_982

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [I

    fill-array-data v2, :array_992

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [I

    fill-array-data v2, :array_9a2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [I

    fill-array-data v2, :array_9b2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [I

    fill-array-data v2, :array_9c2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [I

    fill-array-data v2, :array_9d2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [I

    fill-array-data v2, :array_9e2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [I

    fill-array-data v2, :array_9f2

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [I

    fill-array-data v2, :array_a02

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [I

    fill-array-data v2, :array_a12

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [I

    fill-array-data v2, :array_a22

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [I

    fill-array-data v2, :array_a32

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [I

    fill-array-data v2, :array_a42

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [I

    fill-array-data v2, :array_a52

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v4, [I

    fill-array-data v2, :array_a62

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_3c2
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_3d2
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_3e2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_3f2
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_402
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_412
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_422
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_432
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_442
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_452
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_462
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_472
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_482
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_492
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_4a2
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_4b2
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_4c2
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_4d2
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_4e2
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_4f2
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_502
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_512
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_522
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_532
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_542
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_552
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_562
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_572
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_582
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_592
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_5a2
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_5b2
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_5c2
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_5d2
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_5e2
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_5f2
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_602
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_612
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_622
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_632
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_642
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_652
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_662
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_672
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_682
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_692
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_6a2
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_6b2
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_6c2
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_6d2
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_6e2
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_6f2
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_702
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_712
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_722
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_732
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_742
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_752
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_762
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_772
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_782
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_792
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_7a2
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7b2
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_7c2
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_7d2
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_7e2
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_7f2
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_802
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_812
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_822
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_832
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_842
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_852
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_862
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_872
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_882
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_892
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_8a2
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_8b2
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_8c2
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_8d2
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_8e2
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_8f2
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_902
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_912
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_922
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_932
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_942
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_952
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_962
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_972
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_982
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_992
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_9a2
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_9b2
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_9c2
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_9d2
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_9e2
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_9f2
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_a02
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_a12
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_a22
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_a32
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_a42
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_a52
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_a62
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .registers 9
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 217
    const/high16 v1, 0x3e800000    # 0.25f

    .line 218
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 219
    .local v0, "bestMatch":I
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_7
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v5, v5

    if-ge v2, v5, :cond_20

    .line 220
    sget-object v5, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v3, v5, v2

    .line 221
    .local v3, "pattern":[I
    const v5, 0x3f333333    # 0.7f

    invoke-static {p1, v3, v5}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v4

    .line 222
    .local v4, "variance":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_1d

    .line 223
    move v1, v4

    .line 224
    move v0, v2

    .line 219
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 228
    .end local v3    # "pattern":[I
    .end local v4    # "variance":F
    :cond_20
    if-ltz v0, :cond_23

    .line 229
    return v0

    .line 231
    :cond_23
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 15
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    .line 171
    .local v10, "width":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v7

    .line 173
    .local v7, "rowOffset":I
    const/4 v2, 0x0

    .line 174
    .local v2, "counterPosition":I
    const/4 v11, 0x6

    new-array v3, v11, [I

    .line 175
    .local v3, "counters":[I
    move v6, v7

    .line 176
    .local v6, "patternStart":I
    const/4 v5, 0x0

    .line 179
    .local v5, "isWhite":Z
    move v4, v7

    .local v4, "i":I
    :goto_10
    if-ge v4, v10, :cond_87

    .line 180
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    xor-int/2addr v11, v5

    if-eqz v11, :cond_22

    .line 181
    aget v11, v3, v2

    add-int/lit8 v11, v11, 0x1

    aput v11, v3, v2

    .line 179
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 183
    :cond_22
    const/4 v11, 0x5

    if-ne v2, v11, :cond_82

    .line 184
    const/high16 v1, 0x3e800000    # 0.25f

    .line 185
    .local v1, "bestVariance":F
    const/4 v0, -0x1

    .line 186
    .local v0, "bestMatch":I
    const/16 v8, 0x67

    .local v8, "startCode":I
    :goto_2a
    const/16 v11, 0x69

    if-gt v8, v11, :cond_42

    .line 187
    sget-object v11, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v11, v11, v8

    const v12, 0x3f333333    # 0.7f

    invoke-static {v3, v11, v12}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v9

    .line 189
    .local v9, "variance":F
    cmpg-float v11, v9, v1

    if-gez v11, :cond_3f

    .line 190
    move v1, v9

    .line 191
    move v0, v8

    .line 186
    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 195
    .end local v9    # "variance":F
    :cond_42
    if-ltz v0, :cond_63

    const/4 v11, 0x0

    sub-int v12, v4, v6

    div-int/lit8 v12, v12, 0x2

    sub-int v12, v6, v12

    .line 196
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v6, v12}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v11

    if-eqz v11, :cond_63

    .line 197
    const/4 v11, 0x3

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v6, v11, v12

    const/4 v12, 0x1

    aput v4, v11, v12

    const/4 v12, 0x2

    aput v0, v11, v12

    return-object v11

    .line 199
    :cond_63
    const/4 v11, 0x0

    aget v11, v3, v11

    const/4 v12, 0x1

    aget v12, v3, v12

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    .line 200
    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v3, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    const/4 v11, 0x4

    const/4 v12, 0x0

    aput v12, v3, v11

    .line 202
    const/4 v11, 0x5

    const/4 v12, 0x0

    aput v12, v3, v11

    .line 203
    add-int/lit8 v2, v2, -0x1

    .line 207
    .end local v0    # "bestMatch":I
    .end local v1    # "bestVariance":F
    .end local v8    # "startCode":I
    :goto_7b
    const/4 v11, 0x1

    aput v11, v3, v2

    .line 208
    if-nez v5, :cond_85

    const/4 v5, 0x1

    :goto_81
    goto :goto_1f

    .line 205
    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 208
    :cond_85
    const/4 v5, 0x0

    goto :goto_81

    .line 211
    :cond_87
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 42
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 239
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p3, :cond_3a

    sget-object v32, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3a

    const/4 v8, 0x1

    .line 241
    .local v8, "convertFNC1":Z
    :goto_f
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v29

    .line 242
    .local v29, "startPatternInfo":[I
    const/16 v32, 0x2

    aget v28, v29, v32

    .line 244
    .local v28, "startCode":I
    new-instance v22, Ljava/util/ArrayList;

    const/16 v32, 0x14

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v22, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    packed-switch v28, :pswitch_data_33c

    .line 259
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v32

    throw v32

    .line 239
    .end local v8    # "convertFNC1":Z
    .end local v22    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v28    # "startCode":I
    .end local v29    # "startPatternInfo":[I
    :cond_3a
    const/4 v8, 0x0

    goto :goto_f

    .line 250
    .restart local v8    # "convertFNC1":Z
    .restart local v22    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v28    # "startCode":I
    .restart local v29    # "startPatternInfo":[I
    :pswitch_3c
    const/16 v7, 0x65

    .line 262
    .local v7, "codeSet":I
    :goto_3e
    const/4 v11, 0x0

    .line 263
    .local v11, "done":Z
    const/4 v13, 0x0

    .line 265
    .local v13, "isNextShifted":Z
    new-instance v24, Ljava/lang/StringBuilder;

    const/16 v32, 0x14

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 267
    .local v24, "result":Ljava/lang/StringBuilder;
    const/16 v32, 0x0

    aget v17, v29, v32

    .line 268
    .local v17, "lastStart":I
    const/16 v32, 0x1

    aget v20, v29, v32

    .line 269
    .local v20, "nextStart":I
    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v10, v0, [I

    .line 271
    .local v10, "counters":[I
    const/4 v15, 0x0

    .line 272
    .local v15, "lastCode":I
    const/4 v6, 0x0

    .line 273
    .local v6, "code":I
    move/from16 v5, v28

    .line 274
    .local v5, "checksumTotal":I
    const/16 v19, 0x0

    .line 275
    .local v19, "multiplier":I
    const/4 v14, 0x1

    .line 276
    .local v14, "lastCharacterWasPrintable":Z
    const/16 v31, 0x0

    .line 277
    .local v31, "upperMode":Z
    const/16 v27, 0x0

    .line 279
    .local v27, "shiftUpperMode":Z
    :cond_64
    :goto_64
    if-nez v11, :cond_24a

    .line 281
    move/from16 v30, v13

    .line 282
    .local v30, "unshift":Z
    const/4 v13, 0x0

    .line 285
    move v15, v6

    .line 288
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v10, v1}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v6

    .line 290
    int-to-byte v0, v6

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const/16 v32, 0x6a

    move/from16 v0, v32

    if-eq v6, v0, :cond_87

    .line 294
    const/4 v14, 0x1

    .line 298
    :cond_87
    const/16 v32, 0x6a

    move/from16 v0, v32

    if-eq v6, v0, :cond_93

    .line 299
    add-int/lit8 v19, v19, 0x1

    .line 300
    mul-int v32, v19, v6

    add-int v5, v5, v32

    .line 304
    :cond_93
    move/from16 v17, v20

    .line 305
    const/16 v32, 0x0

    :goto_97
    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_ac

    aget v9, v10, v32

    .line 306
    .local v9, "counter":I
    add-int v20, v20, v9

    .line 305
    add-int/lit8 v32, v32, 0x1

    goto :goto_97

    .line 253
    .end local v5    # "checksumTotal":I
    .end local v6    # "code":I
    .end local v7    # "codeSet":I
    .end local v9    # "counter":I
    .end local v10    # "counters":[I
    .end local v11    # "done":Z
    .end local v13    # "isNextShifted":Z
    .end local v14    # "lastCharacterWasPrintable":Z
    .end local v15    # "lastCode":I
    .end local v17    # "lastStart":I
    .end local v19    # "multiplier":I
    .end local v20    # "nextStart":I
    .end local v24    # "result":Ljava/lang/StringBuilder;
    .end local v27    # "shiftUpperMode":Z
    .end local v30    # "unshift":Z
    .end local v31    # "upperMode":Z
    :pswitch_a6
    const/16 v7, 0x64

    .line 254
    .restart local v7    # "codeSet":I
    goto :goto_3e

    .line 256
    .end local v7    # "codeSet":I
    :pswitch_a9
    const/16 v7, 0x63

    .line 257
    .restart local v7    # "codeSet":I
    goto :goto_3e

    .line 310
    .restart local v5    # "checksumTotal":I
    .restart local v6    # "code":I
    .restart local v10    # "counters":[I
    .restart local v11    # "done":Z
    .restart local v13    # "isNextShifted":Z
    .restart local v14    # "lastCharacterWasPrintable":Z
    .restart local v15    # "lastCode":I
    .restart local v17    # "lastStart":I
    .restart local v19    # "multiplier":I
    .restart local v20    # "nextStart":I
    .restart local v24    # "result":Ljava/lang/StringBuilder;
    .restart local v27    # "shiftUpperMode":Z
    .restart local v30    # "unshift":Z
    .restart local v31    # "upperMode":Z
    :cond_ac
    packed-switch v6, :pswitch_data_346

    .line 317
    packed-switch v7, :pswitch_data_350

    .line 478
    :cond_b2
    :goto_b2
    :pswitch_b2
    if-eqz v30, :cond_64

    .line 479
    const/16 v32, 0x65

    move/from16 v0, v32

    if-ne v7, v0, :cond_246

    const/16 v7, 0x64

    :goto_bc
    goto :goto_64

    .line 314
    :pswitch_bd
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v32

    throw v32

    .line 320
    :pswitch_c2
    const/16 v32, 0x40

    move/from16 v0, v32

    if-ge v6, v0, :cond_f4

    .line 321
    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_df

    .line 322
    add-int/lit8 v32, v6, 0x20

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :goto_dc
    const/16 v27, 0x0

    goto :goto_b2

    .line 324
    :cond_df
    add-int/lit8 v32, v6, 0x20

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x80

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_dc

    .line 327
    :cond_f4
    const/16 v32, 0x60

    move/from16 v0, v32

    if-ge v6, v0, :cond_120

    .line 328
    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_111

    .line 329
    add-int/lit8 v32, v6, -0x40

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    :goto_10e
    const/16 v27, 0x0

    goto :goto_b2

    .line 331
    :cond_111
    add-int/lit8 v32, v6, 0x40

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10e

    .line 337
    :cond_120
    const/16 v32, 0x6a

    move/from16 v0, v32

    if-eq v6, v0, :cond_127

    .line 338
    const/4 v14, 0x0

    .line 340
    :cond_127
    packed-switch v6, :pswitch_data_35a

    :pswitch_12a
    goto :goto_b2

    .line 369
    :pswitch_12b
    const/4 v13, 0x1

    .line 370
    const/16 v7, 0x64

    .line 371
    goto :goto_b2

    .line 342
    :pswitch_12f
    if-eqz v8, :cond_b2

    .line 343
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-nez v32, :cond_142

    .line 346
    const-string v32, "]C1"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    .line 349
    :cond_142
    const/16 v32, 0x1d

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    .line 358
    :pswitch_14d
    if-nez v31, :cond_157

    if-eqz v27, :cond_157

    .line 359
    const/16 v31, 0x1

    .line 360
    const/16 v27, 0x0

    goto/16 :goto_b2

    .line 361
    :cond_157
    if-eqz v31, :cond_161

    if-eqz v27, :cond_161

    .line 362
    const/16 v31, 0x0

    .line 363
    const/16 v27, 0x0

    goto/16 :goto_b2

    .line 365
    :cond_161
    const/16 v27, 0x1

    .line 367
    goto/16 :goto_b2

    .line 373
    :pswitch_165
    const/16 v7, 0x64

    .line 374
    goto/16 :goto_b2

    .line 376
    :pswitch_169
    const/16 v7, 0x63

    .line 377
    goto/16 :goto_b2

    .line 379
    :pswitch_16d
    const/4 v11, 0x1

    goto/16 :goto_b2

    .line 385
    :pswitch_170
    const/16 v32, 0x60

    move/from16 v0, v32

    if-ge v6, v0, :cond_1a3

    .line 386
    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_18e

    .line 387
    add-int/lit8 v32, v6, 0x20

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :goto_18a
    const/16 v27, 0x0

    goto/16 :goto_b2

    .line 389
    :cond_18e
    add-int/lit8 v32, v6, 0x20

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x80

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-char v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18a

    .line 393
    :cond_1a3
    const/16 v32, 0x6a

    move/from16 v0, v32

    if-eq v6, v0, :cond_1aa

    .line 394
    const/4 v14, 0x0

    .line 396
    :cond_1aa
    packed-switch v6, :pswitch_data_374

    :pswitch_1ad
    goto/16 :goto_b2

    .line 425
    :pswitch_1af
    const/4 v13, 0x1

    .line 426
    const/16 v7, 0x65

    .line 427
    goto/16 :goto_b2

    .line 398
    :pswitch_1b4
    if-eqz v8, :cond_b2

    .line 399
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-nez v32, :cond_1c7

    .line 402
    const-string v32, "]C1"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    .line 405
    :cond_1c7
    const/16 v32, 0x1d

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    .line 414
    :pswitch_1d2
    if-nez v31, :cond_1dc

    if-eqz v27, :cond_1dc

    .line 415
    const/16 v31, 0x1

    .line 416
    const/16 v27, 0x0

    goto/16 :goto_b2

    .line 417
    :cond_1dc
    if-eqz v31, :cond_1e6

    if-eqz v27, :cond_1e6

    .line 418
    const/16 v31, 0x0

    .line 419
    const/16 v27, 0x0

    goto/16 :goto_b2

    .line 421
    :cond_1e6
    const/16 v27, 0x1

    .line 423
    goto/16 :goto_b2

    .line 429
    :pswitch_1ea
    const/16 v7, 0x65

    .line 430
    goto/16 :goto_b2

    .line 432
    :pswitch_1ee
    const/16 v7, 0x63

    .line 433
    goto/16 :goto_b2

    .line 435
    :pswitch_1f2
    const/4 v11, 0x1

    goto/16 :goto_b2

    .line 441
    :pswitch_1f5
    const/16 v32, 0x64

    move/from16 v0, v32

    if-ge v6, v0, :cond_211

    .line 442
    const/16 v32, 0xa

    move/from16 v0, v32

    if-ge v6, v0, :cond_20a

    .line 443
    const/16 v32, 0x30

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    :cond_20a
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    .line 447
    :cond_211
    const/16 v32, 0x6a

    move/from16 v0, v32

    if-eq v6, v0, :cond_218

    .line 448
    const/4 v14, 0x0

    .line 450
    :cond_218
    packed-switch v6, :pswitch_data_38e

    :pswitch_21b
    goto/16 :goto_b2

    .line 467
    :pswitch_21d
    const/16 v7, 0x64

    .line 468
    goto/16 :goto_b2

    .line 452
    :pswitch_221
    if-eqz v8, :cond_b2

    .line 453
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-nez v32, :cond_234

    .line 456
    const-string v32, "]C1"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    .line 459
    :cond_234
    const/16 v32, 0x1d

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    .line 464
    :pswitch_23f
    const/16 v7, 0x65

    .line 465
    goto/16 :goto_b2

    .line 470
    :pswitch_243
    const/4 v11, 0x1

    goto/16 :goto_b2

    .line 479
    :cond_246
    const/16 v7, 0x65

    goto/16 :goto_bc

    .line 484
    .end local v30    # "unshift":Z
    :cond_24a
    sub-int v16, v20, v17

    .line 489
    .local v16, "lastPatternSize":I
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v20

    .line 491
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v32

    sub-int v33, v20, v17

    div-int/lit8 v33, v33, 0x2

    add-int v33, v33, v20

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v32

    const/16 v33, 0x0

    .line 490
    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v32

    if-nez v32, :cond_277

    .line 493
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v32

    throw v32

    .line 497
    :cond_277
    mul-int v32, v19, v15

    sub-int v32, v5, v32

    .line 499
    rem-int/lit8 v32, v32, 0x67

    move/from16 v0, v32

    if-eq v0, v15, :cond_286

    .line 500
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v32

    throw v32

    .line 504
    :cond_286
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    .line 505
    .local v25, "resultLength":I
    if-nez v25, :cond_291

    .line 507
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v32

    throw v32

    .line 512
    :cond_291
    if-lez v25, :cond_2a6

    if-eqz v14, :cond_2a6

    .line 513
    const/16 v32, 0x63

    move/from16 v0, v32

    if-ne v7, v0, :cond_2e9

    .line 514
    add-int/lit8 v32, v25, -0x2

    move-object/from16 v0, v24

    move/from16 v1, v32

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 520
    :cond_2a6
    :goto_2a6
    const/16 v32, 0x1

    aget v32, v29, v32

    const/16 v33, 0x0

    aget v33, v29, v33

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v18, v32, v33

    .line 521
    .local v18, "left":F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x40000000    # 2.0f

    div-float v33, v33, v34

    add-float v26, v32, v33

    .line 523
    .local v26, "right":F
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v23

    .line 524
    .local v23, "rawCodesSize":I
    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 525
    .local v21, "rawBytes":[B
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2d4
    move/from16 v0, v23

    if-ge v12, v0, :cond_2f5

    .line 526
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Byte;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Byte;->byteValue()B

    move-result v32

    aput-byte v32, v21, v12

    .line 525
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d4

    .line 516
    .end local v12    # "i":I
    .end local v18    # "left":F
    .end local v21    # "rawBytes":[B
    .end local v23    # "rawCodesSize":I
    .end local v26    # "right":F
    :cond_2e9
    add-int/lit8 v32, v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2a6

    .line 529
    .restart local v12    # "i":I
    .restart local v18    # "left":F
    .restart local v21    # "rawBytes":[B
    .restart local v23    # "rawCodesSize":I
    .restart local v26    # "right":F
    :cond_2f5
    new-instance v32, Lcom/google/zxing/Result;

    .line 530
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v36

    move/from16 v1, v18

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    new-instance v36, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v36

    move/from16 v1, v26

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v36, v34, v35

    sget-object v35, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 529
    return-object v32

    .line 248
    nop

    :pswitch_data_33c
    .packed-switch 0x67
        :pswitch_3c
        :pswitch_a6
        :pswitch_a9
    .end packed-switch

    .line 310
    :pswitch_data_346
    .packed-switch 0x67
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
    .end packed-switch

    .line 317
    :pswitch_data_350
    .packed-switch 0x63
        :pswitch_1f5
        :pswitch_170
        :pswitch_c2
    .end packed-switch

    .line 340
    :pswitch_data_35a
    .packed-switch 0x60
        :pswitch_b2
        :pswitch_b2
        :pswitch_12b
        :pswitch_169
        :pswitch_165
        :pswitch_14d
        :pswitch_12f
        :pswitch_12a
        :pswitch_12a
        :pswitch_12a
        :pswitch_16d
    .end packed-switch

    .line 396
    :pswitch_data_374
    .packed-switch 0x60
        :pswitch_b2
        :pswitch_b2
        :pswitch_1af
        :pswitch_1ee
        :pswitch_1d2
        :pswitch_1ea
        :pswitch_1b4
        :pswitch_1ad
        :pswitch_1ad
        :pswitch_1ad
        :pswitch_1f2
    .end packed-switch

    .line 450
    :pswitch_data_38e
    .packed-switch 0x64
        :pswitch_21d
        :pswitch_23f
        :pswitch_221
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_243
    .end packed-switch
.end method
