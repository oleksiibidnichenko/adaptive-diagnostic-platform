# adaptive-diagnostic-platform

This project is an initial step/proof of concept towards the open-source implementation of the AUTOSAR adaptive diagnostics platform.

## Referral specifications
* [Specification of Diagnostics for Adaptive Platform](https://www.autosar.org/fileadmin/user_upload/standards/adaptive/18-03/AUTOSAR_SWS_AdaptiveDiagnostics.pdf);
* [Road vehicles — Diagnostic communication over Internet Protocol (DoIP) — Part 2: Transport protocol and network layer services](https://www.iso.org/standard/74785.html "ISO 13400-2:2019");
* [Road vehicles — Unified diagnostic services (UDS) — Part 1: Application layer](https://www.iso.org/standard/72439.html "ISO 14229-1:2020");
* [Road vehicles — Unified diagnostic services (UDS) — Part 2: Session layer services](https://www.iso.org/standard/45763.html "ISO 14229-2:2013").

**Note:** unfortunately ISO specification distribution policy prohibiting documentation sharing, this only reference links are provided.

## Tachnilogies
* OS: Linux;
* Language: C++17;
* Coding guideline: [Guidelines for the use of the C++14 language in critical and safety-related systems](https://www.autosar.org/fileadmin/user_upload/standards/adaptive/18-03/AUTOSAR_RS_CPP14Guidelines.pdf).

## Dependencies
* [Event processor](https://github.com/libevent/libevent);
* [WiringPi](https://github.com/WiringPi/WiringPi).

**Note:** WiringPi is a temporary solution used only for the PoC purpose.

# ToDo
1. Docker containers for the build automation:
    1. ARMv7;
    2. ARMv8;
    3. x86_64.
2. Revise repository composition. It should be an explicit functionality split as well as an ability to customize the diagnostics platform for the target control unit.
3. Extend coding guideline tacking capabilities.
    1. Provide pre-commit hooks;
    2. Configure cpplint;
    3. Integrate those changes into the docker builder.
