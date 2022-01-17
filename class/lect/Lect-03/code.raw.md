
m4_include(../../../setup.m4)

## Step 1

Convert from miles to kilometers.

Conversion generally is ( ( X + k1 ) * C ) + k2

In our case k1 and k2 are 0.  So we just get X * C

### Demo - lookup conversion from miles to kilometers

```
m4_include(conv/step-1.py.nu)
```

### Demo - of this as a visualization



## Step 2 - Input with error

```
m4_include(conv/step-2.py.nu)
```

## Step 3 - Fixed error / Types

```
m4_include(conv/step-3.py.nu)
```

## Step 4 - Make a function

```
m4_include(conv/step-4.py.nu)
```

## Step 5 - Make Reusable Code

step-5.py:

```
m4_include(conv/step-5.py.nu)
```

conv/mi_to_km.py:

```
m4_include(conv/mi_to_km.py.nu)
```

## Step 6 - Add documentation

This is really a little step in this program - but a really important one for this class..

```
m4_include(conv/step-6.py.nu)
```

