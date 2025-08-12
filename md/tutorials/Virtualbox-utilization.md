# Virtualbox using on Kaisen

## How to disable entirely KVM module?

Since Kaisen 3.0, Virtualbox depends on KVM to works, but if the KVM module is enabled, Virtualbox cannot works.
To disable entirely the KVM module, you must to do this:

- If you have an Intel CPU:
```grep -i "model name" /proc/cpuinfo|grep -i "intel" && echo "blacklist kvm_intel" | sudo tee /etc/modprobe.d/blacklist.conf```

- If you have an AMD CPU:
```grep -i "model name" /proc/cpuinfo|grep -i "amd" && echo "blacklist kvm_amd" | sudo tee /etc/modprobe.d/blacklist.conf```

## Advices

When you blacklist this module, you cannot use the native KVM hypervisor. To disable KVM during this session, you must to do this:

- If you have an Intel CPU:
```sudo rmmod kvm_intel && sudo rmmod kvm```

- If you have an AMD CPU:
```sudo rmmod kvm_amd && sudo rmmod kvm```
